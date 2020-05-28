<?php
/**
 *  Copyright (C) Thomas Neef | neefit.de - All Rights Reserved
 * @author  Thomas Neef
 * @Modul  shopware-jos
 * @Class  FrontendManagerSubscriber.php
 * @date  28.05.20, 13:19
 */

namespace JosFrontendManager\Subscribers;

use Enlight\Event\SubscriberInterface;

class FrontendManagerSubscriber implements SubscriberInterface
{

    /**
     * @var string
     */
    private $pluginDirectory;

    /**
     * @var \Enlight_Template_Manager
     */
    private $templateManager;

    /**
     * @param $pluginDirectory
     * @param \Enlight_Template_Manager $templateManager
     */
    public function __construct($pluginDirectory, \Enlight_Template_Manager $templateManager)
    {
        $this->pluginDirectory = $pluginDirectory;
        $this->templateManager = $templateManager;
    }

    /**
     * @inheritdoc
     */
    public static function getSubscribedEvents()
    {
        return [
            'Enlight_Controller_Dispatcher_ControllerPath_Backend_FrontendManagerBackend' => 'onGetBackendController'
        ];
    }

    /**
     * @return string
     */
    public function onGetBackendController()
    {
        return $this->pluginDirectory.'/Controllers/Backend/FrontendManagerBackend.php';
    }


}