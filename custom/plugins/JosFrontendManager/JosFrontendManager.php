<?php
/**
 *  Copyright (C) Thomas Neef | neefit.de - All Rights Reserved
 * @author  Thomas Neef
 * @Modul  shopware-jos
 * @Class  JosFrontendManager.php
 * @date  28.05.20, 13:12
 */

namespace JosFrontendManager;

use Shopware\Components\Plugin;
use Shopware\Components\Plugin\Context\ActivateContext;
use Shopware\Components\Plugin\Context\DeactivateContext;
use Shopware\Components\Plugin\Context\InstallContext;
use Shopware\Components\Plugin\Context\UpdateContext;
use Shopware\Components\Plugin\Context\UninstallContext;


class JosFrontendManager extends \Shopware\Components\Plugin
{

    public function install(InstallContext $context)
    {
        $context->scheduleClearCache($this->getCacheArray());
        parent::install($context);
    }

    public function update(UpdateContext $context)
    {
        $context->scheduleClearCache($this->getCacheArray());
    }

    public function activate(ActivateContext $context)
    {
        $context->scheduleClearCache($this->getCacheArray());
    }

    public function deactivate(DeactivateContext $context)
    {
        $context->scheduleClearCache($this->getCacheArray());
    }

    public function uninstall(UninstallContext $context)
    {
        $context->scheduleClearCache($this->getCacheArray());
        parent::uninstall($context);
    }



    /**
     * Get caches to clear
     *
     * @return array
     */
    private function getCacheArray()
    {
        return array(
            InstallContext::CACHE_TAG_CONFIG,
            InstallContext::CACHE_TAG_HTTP,
            InstallContext::CACHE_TAG_PROXY
        );
    }
}