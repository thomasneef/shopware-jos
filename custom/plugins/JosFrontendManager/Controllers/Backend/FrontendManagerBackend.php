<?php
/**
 *  Copyright (C) Thomas Neef | neefit.de - All Rights Reserved
 * @author  Thomas Neef
 * @Modul  shopware-jos
 * @Class  FrontendManagerBackend.php
 * @date  28.05.20, 13:22
 */

use Doctrine\DBAL\Driver\PDOStatement;
use Doctrine\ORM\AbstractQuery;
use Doctrine\ORM\Query\Expr\Join;
use Shopware\Components\CSRFWhitelistAware;
use Shopware\Models\Article\Repository as ArticleRepo;
use Shopware\Models\Article\SupplierRepository;
use Shopware\Models\Emotion\Repository as EmotionRepo;
use Shopware\Models\Form\Repository as FormRepo;

class Shopware_Controllers_Backend_FrontendManagerBackend  extends Enlight_Controller_Action implements CSRFWhitelistAware
{

    /**
     * @var Enlight_Components_Db_Adapter_Pdo_Mysql $db
     */
    public static $db;

    private static function initDb()
    {
        if (empty(self::$db)) {
            self::$db = Shopware()->Db();
        }
    }

    public function preDispatch()
    {
        $this->get('template')->addTemplateDir(__DIR__ . '/../../Resources/views/');
    }

    public function postDispatch()
    {
        $csrfToken = $this->container->get('BackendSession')->offsetGet('X-CSRF-Token');
        $this->View()->assign([ 'csrfToken' => $csrfToken ]);
    }

    /* ==============================================================
     * Index Actions Cockpit
     * ============================================================== */
    public function indexAction()
    {
        $db = Shopware()->Db();

    }





    public function getWhitelistedCSRFActions()
    {
        return [
            'index'

        ];
    }

}