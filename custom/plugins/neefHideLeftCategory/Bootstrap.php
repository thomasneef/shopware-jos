<?php
/**
 *  Copyright (C) Thomas Neef | neefit.de - All Rights Reserved
 * @author  Thomas Neef
 * @Modul  Projects
 * @Class  Bootstrap.php
 * @date  28.05.20, 19:22
 */

class Shopware_Plugins_Frontend_neefHideLeftCategory_Bootstrap extends Shopware_Components_Plugin_Bootstrap
{
    protected $hideCategoriesIds = null;

    /**
     * Returns the information of the plugin
     * with will be displayed in the plugin manager
     *
     * @return unknown
     */
    public function getInfo()
    {
        return array(
            'label'			=> 'Kategorien in linker Navigation ausblenden',
            'link'          => 'http://www.neefit.de',
            'autor'         => 'Thomas Neef',
            'version'       => $this->getVersion(),
            'copyright'     => 'Copyright (c) 2019, neefit',
            'description'   => 'Über dieses Plugin können pro Kategorie definieren, dass diese nicht in der linken Navigation angezeigt werden soll.<br><br>'

        );
    }

    /**
     * Returns the current version of the plugin
     *
     * @return string
     */
    public function getVersion()
    {
        return '1.1.0';
    }

    /**
     *
     * @return unknown
     */
    public function install()
    {
        $this->installConfig();
        $this->createAttributes();

        $this->subscribeEvent(
            'Enlight_Controller_Action_PostDispatch',
            'onFrontendPostDispatch',
            101
        );

        $this->subscribeEvent(
            'Enlight_Controller_Action_PostDispatch_Backend_Category',
            'onBackendCategoryPostDispatch'
        );

        return array('success' => true, 'invalidateCache' => array( 'backend', 'proxy', 'config', 'template' ));
    }

    /**
     * Uninstalls the plugin / nothing to do
     * @return bool
     */
    public function uninstall()
    {
        return true;
    }

    /**
     * Updates the plugin / nothing to do
     * @return bool
     */
    public function update($version)
    {
        $this->installConfig();

        return true;
    }

    public function installConfig()
    {
        $this->Form()->setElement('checkbox','hideInMobileMenu', array(
            'label' => 'Kategorien auch im mobilen Menü ausblenden',
            'value' => false,
            'scope' => \Shopware\Models\Config\Element::SCOPE_SHOP
        ));
    }

    /**
     * Creates the attributes for the plugin
     */
    public function createAttributes()
    {
        $service = Shopware()->Container()->get('shopware_attribute.crud_service');
        $service->update('s_categories_attributes', 'neef_hide_menu', 'tinyint');
    }

    /**
     * Loads the required templates and sets the configuration
     * @param Enlight_Event_EventArgs $args
     *
     */
    public function onFrontendPostDispatch(Enlight_Event_EventArgs $args)
    {
        $view = $args->getSubject()->View();
        $request = $args->getSubject()->Request();
        $controller = $request->getControllerName();
        $action = $request->getActionName();

        /**
         * Ebenfalls im Navigationselemente im mobilen Menü ausblenden, wenn die
         * Option "Kategorien auch im mobilen Menü ausblenden" aktiv ist.
         */
        if(true === $this->Config()->hideInMobileMenu) {
            //Request bei dem mobilen Menü anpassen
            if('widgets' == $request->getModuleName() && 'listing' == $request->getControllerName() && 'getCategory' == $request->getActionName()) {
                $this->fetchHideCategories();

                $categoryInfo = $view->category;
                if(!empty($categoryInfo)) {
                    foreach($categoryInfo['children'] as $key => $category) {
                        if(in_array($category['id'], $this->hideCategoriesIds)) {
                            unset($categoryInfo['children'][$key]);
                        }
                    }
                }

                $view->category = $categoryInfo;
            }
        }

        if($request->getModuleName() != 'frontend') {
            return;
        }

        $view->addTemplateDir($this->Path() . "templates/");

        $view->sCategoriesFiltered = $view->sCategories;
        $view->sMainCategoriesFiltered = $view->sMainCategories;

        $this->fetchHideCategories();

        $view->sCategoriesFiltered = $this->getFilteredCategories($view->sCategories);
        $view->sMainCategoriesFiltered = $this->getFilteredCategories($view->sMainCategories);

        if(!empty($view->sCategories) && empty($view->sCategoriesFiltered)) {
            $view->emptyCategories = true;
        }

        //Loads the css and javascript files
        $view->extendsTemplate("frontend/neef_hide_left_category/index/left.tpl");
    }

    /**
     * Ermittelt alle Kategorien die ausgeblendet werden sollen
     */
    protected function fetchHideCategories()
    {
        $hideCategoriesIds = Shopware()->Db()->fetchAll("
            SELECT `categoryID`
            FROM `s_categories_attributes`
            WHERE `neef_hide_menu` =1
        ");

        if(empty($hideCategoriesIds)) {
            return;
        }

        $hideCategoriesIdsArray = array();
        foreach($hideCategoriesIds as $hideCategoriesId) {
            $hideCategoriesIdsArray[] = $hideCategoriesId['categoryID'];
        }
        $this->hideCategoriesIds = $hideCategoriesIdsArray;
    }

    /**
     * Filters the categories / hides the items
     * @param $categories
     * @return array
     */
    public function getFilteredCategories($categories)
    {
        $newCategories = array();

        foreach($categories as $category) {
            if(!in_array($category['id'], $this->hideCategoriesIds)) {
                if(!empty($category['subcategories'])) {
                    $category['subcategories'] = $this->getFilteredCategories($category['subcategories']);
                }
                $newCategories[] = $category;
            }
        }

        return $newCategories;
    }

    /**
     * Filters the categories / hides the items
     * @param $categories
     * @return array
     */
    public function getFilteredSubCategories($categories)
    {
        $newCategories = array();

        foreach($categories as $category) {
            if(!in_array($category['id'], $this->hideCategoriesIds)) {
                $newCategories[] = $category;
            }
        }

        return $newCategories;
    }

    /**
     * Extends the required backend components of the article module
     * @param Enlight_Event_EventArgs $args
     */
    public function onBackendCategoryPostDispatch(Enlight_Event_EventArgs $args)
    {
        /**@var $view Enlight_View_Default*/
        $view = $args->getSubject()->View();

        // Add template directory
        $view->addTemplateDir($this->Path() . "templates/");

        if ($args->getRequest()->getActionName() === 'load') {
            $view->extendsTemplate(
                'backend/neef_hide_left_category/category/view/category/tabs/settings.js'
            );
            $view->extendsTemplate(
                'backend/neef_hide_left_category/category/model/detail.js'
            );
        }elseif ($args->getRequest()->getActionName() === 'getDetail') {
            $data = $view->data;
            if(!empty($data)) {
                $hideLeftValue = Shopware()->Db()->fetchOne("
                    SELECT `neef_hide_menu`
                    FROM `s_categories_attributes`
                    WHERE `categoryID` = :categoryID
                ", array(
                    'categoryID' => $data['id']
                ));

                $data['hideLeft'] = !empty($hideLeftValue) ? true : false;
            }
            $view->data = $data;
        }elseif ($args->getRequest()->getActionName() === 'updateDetail') {
            $hideLeft = $args->getSubject()->Request()->hideLeft;

            $catAttr = Shopware()->Db()->fetchRow("
                SELECT * FROM `s_categories_attributes`
                WHERE `categoryID` = :categoryID
            ", array(
                'categoryID' => $args->getSubject()->Request()->id
            ));

            if(empty($catAttr)) {
                Shopware()->Db()->query("
                    INSERT INTO `s_categories_attributes`
                    ( `categoryID`, `neef_hide_menu` ) VALUES ( :categoryID, :hideLeft )
                ", array(
                    'hideLeft' => empty($hideLeft) ? 0 : 1,
                    'categoryID' => $args->getSubject()->Request()->id
                ));
            } else {
                Shopware()->Db()->query("
                    UPDATE `s_categories_attributes`
                    SET `neef_hide_menu` = :hideLeft
                    WHERE `categoryID` = :categoryID
                ", array(
                    'hideLeft' => empty($hideLeft) ? 0 : 1,
                    'categoryID' => $args->getSubject()->Request()->id
                ));
            }
        }
    }
}
