<?php

namespace Shopware\Themes\JosActionShop;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
    protected $extend = 'Responsive';

    protected $name = 'ActionShop | Theme2020';
    protected $description = ' ActionShop optimiert v2020';
    protected $author = 'Thomas Neef';

    protected $inheritanceConfig = false;

    protected $css = [
        'src/css/fontawesome-all.css'
    ];

    /**
     * Holds default fieldSet configuration.
     *
     * @var array
     */
    private $fieldSetDefaults = [
        'layout' => 'column',
        'height' => 170,
        'flex' => 0,
        'defaults' => ['columnWidth' => 0.5, 'labelWidth' => 180, 'margin' => '3 16 3 0'],
    ];

    /**
     * 
     * Holds default theme colors.
     *
     * @var array
     */
    private $themeColorDefaults = [
        'brand-primary' => '#212221',
        'brand-primary-light' => 'saturate(lighten(@brand-primary,12%), 5%)',
        'brand-secondary' => '#eea037',
        'brand-secondary-dark' => 'darken(@brand-secondary, 15%)',
        'titan-header-base-color' => '#212221',
        'titan-header-base-font-color' => '#fff',
        'titan-header-base-hover-color' => '#fff',
        'titan-topbar-color' => '#f3f3f3',
        'titan-topbar-font-color' => '#000',
        'titan-topbar-border-color' => 'transparent',
        'titan-nav-font-color' => '#fff',
        'titan-nav-color' => '#212221',
        'titan-nav-hover-color' => '#fff',
        'titan-nav-border-color' => 'transparent',
        'titan-search-font-color' => '#fff',
        'titan-search-bg-color' => '#434341',
        'titan-footer-bg-color' => '#f2f2f2',
        'titan-footer-font-color' => '#000',
        'titan-footer-hover-color' => '#eea037',
        'payment-shipping-bg-color' => '#f1f1f3',
        'payment-shipping-box-color' => '#ffffff',
        'payment-shipping-border-color' => 'darken(@payment-shipping-bg-color, 3%)',
        'btn-primary-bg' => '#000',
        'btn-primary-text-color' => '#fff',
        'btn-primary-border-color' => '#000',
        'btn-primary-hover-bg' => '#444',
        'btn-primary-hover-text-color' => '#eee',
        'btn-primary-hover-border-color' => '#000',
        'btn-secondary-bg' => '#000',
        'btn-secondary-text-color' => '#fff',
        'btn-secondary-border-color' => '#000',
        'btn-secondary-hover-bg' => '#444',
        'btn-secondary-hover-text-color' => '#eee',
        'btn-secondary-hover-border-color' => '#000',
        'btn-default-bg' => '#000',
        'btn-default-text-color' => '#fff',
        'btn-default-border-color' => '#000',
        'btn-default-hover-bg' => '#444',
        'btn-default-hover-text-color' => '#fff',
        'btn-default-hover-border-color' => '#444',
        'gray' => '#F5F5F8',
        'gray-light' => '#efefef',
        'gray-dark' => 'darken(@gray-light, 10%)',
        'border-color' => '#eee',
        'body-bg' => '#fff',
        'text-color' => '@brand-primary',
        'text-color-dark' => '#000',
        'link-color' => '#444',
        'link-hover-color' => '#000',
        'rating-star-color' => '#fad232',
    ];

    /**
     * Holds default font configuration.
     *
     * @var array
     */
    private $themeFontDefaults = [
        'font-base-stack' => 'Montserrat,"Open Sans", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;',
        'font-headline-stack' => '@font-base-stack',
        'font-size-base' => 14,
        'font-base-weight' => 500,
        'font-light-weight' => 300,
        'font-bold-weight' => 700,
        'font-size-h1' => 26,
        'font-size-h2' => 21,
        'font-size-h3' => 18,
        'font-size-h4' => 16,
        'font-size-h5' => '@font-size-base',
        'font-size-h6' => 12,
        'panel-header-font-size' => '@font-size-base',
        'label-font-size' => '@font-size-base',
        'input-font-size' => '@font-size-base',
        'btn-font-size' => 14,
        'btn-icon-size' => 10,

        'scrolltotop-bottom' => 20,
        'scrolltotop-right' => 50,
        'scrolltotop-bg' => '@brand-secondary',
        'scrolltotop-color' => '#fff',
        'scrolltotop-size' => 50,
        'scrolltotop-fontsize' => 50,
        'scrolltotop-backgroundcolor' => '#212121',
        'scrolltotop-backgroundcolorhover' => '#000',
        'scrolltotop-iconColor' => '#fff',
        'scrolltotop-iconColorHover' => '#fff'
    ];
    
    protected $javascript = [
        'src/js/scroll-to-top.js',
        'src/js/jos-script.js',
        'src/js/jos-intercom.js'
    ];

    public function createConfig(Form\Container\TabContainer $container)
    {
        $container->addTab($this->createLogoBrandTab());
        $container->addTab($this->createMainConfigTab());
        $container->addTab($this->createColorConfigTab());
        $container->addTab($this->createActionshopConfigTab());
    }

    private function createTitanHeaderSFTab(){

        $tabHeaderFS = $this->createTab(
            'titan_header_sidebar_footer',
            'Header & Footer',
            [
                'attributes' => [
                    'autoScroll' => true,
                ],
            ]
        );

        $fieldset = $this->createFieldSet(
            'titan_header_topbar',
            'Header-Settings: Topbar',
            ['attributes' => array_merge($this->fieldSetDefaults, ['height' => 125])]
        );
        
        $topbarbgcolor = $this->createColorPickerField(
            'titan-topbar-color',
            '__titan-topbar-color__',
            $this->themeColorDefaults['titan-topbar-color']
        );
        $fieldset->addElement($topbarbgcolor);
        
        $topbarfgcolor = $this->createColorPickerField(
            'titan-topbar-font-color',
            '__titan-topbar-font-color__',
            $this->themeColorDefaults['titan-topbar-font-color']
        );
        $fieldset->addElement($topbarfgcolor);
        
        $topbarbordercolor = $this->createColorPickerField(
            'titan-topbar-border-color',
            '__titan-topbar-border-color__',
            $this->themeColorDefaults['titan-topbar-border-color']
        );
        $fieldset->addElement($topbarbordercolor);
        
        $tabHeaderFS->addElement($fieldset);
        
        //GROUP
        
        $fieldset = $this->createFieldSet(
            'titan_header_mid',
            'Header-Settings: Mid-Section',
            ['attributes' => array_merge($this->fieldSetDefaults, ['height' => 150])]
        );
        
        $headbgcolor = $this->createColorPickerField(
            'titan-header-base-color',
            '__titan-header-base-color__',
            $this->themeColorDefaults['titan-header-base-color']
        );
        $fieldset->addElement($headbgcolor);
        
        $headfgcolor = $this->createColorPickerField(
            'titan-header-base-font-color',
            '__titan-header-base-font-color__',
            $this->themeColorDefaults['titan-header-base-font-color']
        );
        $fieldset->addElement($headfgcolor);
        
        $headhovercolor = $this->createColorPickerField(
            'titan-header-base-hover-color',
            '__titan-header-base-hover-color__',
            $this->themeColorDefaults['titan-header-base-hover-color']
        );
        $fieldset->addElement($headhovercolor);
        
        $headsearchfontcolor = $this->createColorPickerField(
            'titan-search-font-color',
            '__titan-search-font-color__',
            $this->themeColorDefaults['titan-search-font-color']
        );
        $fieldset->addElement($headsearchfontcolor);
        
        $headsearchbgcolor = $this->createColorPickerField(
            'titan-search-bg-color',
            '__titan-search-bg-color__',
            $this->themeColorDefaults['titan-search-bg-color']
        );
        $fieldset->addElement($headsearchbgcolor);
        
        $tabHeaderFS->addElement($fieldset);
        
        //GROUP
        
        $fieldset = $this->createFieldSet(
            'titan_header_nav',
            'Header-Settings: Navigation',
            ['attributes' => array_merge($this->fieldSetDefaults, ['height' => 125])]
        );
        
        $navbgcolor = $this->createColorPickerField(
            'titan-nav-color',
            '__titan-nav-color__',
            $this->themeColorDefaults['titan-nav-color']
        );
        $fieldset->addElement($navbgcolor);
        
        $navfgcolor = $this->createColorPickerField(
            'titan-nav-font-color',
            '__titan-nav-font-color__',
            $this->themeColorDefaults['titan-nav-font-color']
        );
        $fieldset->addElement($navfgcolor);
        
        $navhovercolor = $this->createColorPickerField(
            'titan-nav-hover-color',
            '__titan-nav-hover-color__',
            $this->themeColorDefaults['titan-nav-hover-color']
        );
        $fieldset->addElement($navhovercolor);
        
        $navbordercolor = $this->createColorPickerField(
            'titan-nav-border-color',
            '__titan-nav-border-color__',
            $this->themeColorDefaults['titan-nav-border-color']
        );
        $fieldset->addElement($navbordercolor);
        
        $tabHeaderFS->addElement($fieldset);

        $fieldset = $this->createFieldSet(
            'titan_footer',
            'Footer-Settings',
            ['attributes' => array_merge($this->fieldSetDefaults, ['height' => 125])]
        );

        $footerbgcolor = $this->createColorPickerField(
            'titan-footer-bg-color',
            '__titan-footer-bg-color__',
            $this->themeColorDefaults['titan-footer-bg-color']
        );
        $fieldset->addElement($footerbgcolor);

        $footerfontcolor = $this->createColorPickerField(
            'titan-footer-font-color',
            '__titan-footer-font-color__',
            $this->themeColorDefaults['titan-footer-font-color']
        );
        $fieldset->addElement($footerfontcolor);

        $footerhovercolor = $this->createColorPickerField(
            'titan-footer-hover-color',
            '__titan-footer-hover-color__',
            $this->themeColorDefaults['titan-footer-hover-color']
        );
        $fieldset->addElement($footerhovercolor);

        $tabHeaderFS->addElement($fieldset);
        
        return $tabHeaderFS;
    }

    private function createPaymentShippingIcons(){

        $tab = $this->createTab(
            'payment_shipping_icons_settings',
            '__payment-shipping-tab-title__',
            ['attributes' => [
                'autoScroll' => true,
                ]
            ]
        );

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 125]);
        $fieldSet = $this->createFieldSet(
            'payment_shipping_style_settings',
            '__payment_shipping_style_settings__',
            ['attributes' => $attributes]
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_payment_shipping_icons',
                '__payment_shipping_icons_show__',
                true
            )
        );

        $fieldSet->addElement(
            $this->createColorPickerField(
                'payment-shipping-bg-color',
                '__payment_shipping_bg_color__',
                $this->themeColorDefaults['payment-shipping-bg-color']
            )
        );

        $fieldSet->addElement(
            $this->createColorPickerField(
                'payment-shipping-box-color',
                '__payment_shipping_box_color__',
                $this->themeColorDefaults['payment-shipping-box-color']
            )
        );

        $fieldSet->addElement(
            $this->createColorPickerField(
                'payment-shipping-border-color',
                '__payment_shipping_border_color__',
                $this->themeColorDefaults['payment-shipping-border-color']
            )
        );

        $tab->addElement($fieldSet);

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 260]);

        $fieldSet = $this->createFieldSet(
            'payment_icons_settings',
            '__payment_icons_settings__',
            ['attributes' => $attributes]
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_paypal_icon',
                'Paypal',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_paypal_rate_icon',
                'Paypal Ratenkauf',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_nachnahme_icon',
                'Nachnahme',
                true
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_vorkasse_icon',
                'Vorkasse',
                true
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_amazon_icon',
                'Amazon Pay',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_soforuw_icon',
                'Sofort-Überweisung',
                true
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_mastercard_icon',
                'MASTERcard',
                true
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_visa_icon',
                'VISAcard',
                true
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_giropay_icon',
                'Giropay',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_apple_icon',
                'Apple Pay',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_klarna_icon',
                'Klarna',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_klarna_invoice_icon',
                '__klarna-invoice__',
                false
            )
        );

        $tab->addElement($fieldSet);

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 175]);
        $fieldSet = $this->createFieldSet(
            'shipping_icons_settings',
            '__shipping_icons_settings__',
            ['attributes' => $attributes]
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_dhl_icon',
                'DHL',
                true
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_dpd_icon',
                'DPD',
                true
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_gls_icon',
                'GLS',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_fedex_icon',
                'FedEx',
                true
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_hermes_icon',
                'Hermes',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_ups_icon',
                'UPS',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_tnt_icon',
                'TNT',
                false
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'show_deutschepost_icon',
                'Deutsche Post',
                false
            )
        );

        $tab->addElement($fieldSet);
        return $tab;
    }

    private function createSocialMedia()
    {
        $fieldSet = $this->createFieldSet(
            'social_media_links_settings',
            'Social Media Links'
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_facebook',
                'Facebook',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_twitter',
                'Twitter',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_instagram',
                'Instagram',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_google',
                'Google Plus',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_linkedin',
                'LinkedIn',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_youtube',
                'Youtube',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_pinterest',
                'Pinterest',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_xing',
                'Xing',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_info',
                'Info-Link',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_blog',
                'Wordpress',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'social_media_link_news',
                'News',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $tab = $this->createTab(
            'social_media_tab',
            'Social Media',
            [
                'attributes' => [
                    'layout' => 'anchor',
                    'autoScroll' => true,
                    'padding' => '0'
                ]
            ]
            
        );
        
        $tab->addElement($fieldSet);

        return $tab;
    }

    /* BOF Create ScropTAB  createScrollTab  */



    /* EOF Create ScropTAB  createScrollTab  */










    private function createLogoBrandTab()
    {
        $tab = $this->createTab(
            'titan-logos-icons',
            'Logos & Icons'
        );


        $tabPanel = $this->createTabPanel(
            'logo_brand_tab_panel',
            [
                'attributes' => [
                    'plain' => true,
                ],
            ]
        );

        $logoTab = $this->createTab(
            'titan-logo',
            'Logo & Brand-Icons',
            [
                'attributes' => [
                    'layout' => 'anchor',
                    'autoScroll' => true,
                    'padding' => '0'
                ]
            ]
        );

        $fieldSet = $this->createFieldSet(
            'titanLogos',
            'Logos',
            [
                'attributes' => [
                    'padding' => '10',
                    'margin' => '5',
                    'layout' => 'anchor',
                    'defaults' => ['labelWidth' => 155, 'anchor' => '100%']
                ],
            ]
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'mobileLogo',
                'Mobile Logo',
                'frontend/_public/src/img/logos/logo--mobile.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'tabletLogo',
                'Tablet Logo',
                'frontend/_public/src/img/logos/logo--tablet.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'tabletLandscapeLogo',
                'Tablet Landscape Logo',
                'frontend/_public/src/img/logos/logo--tablet.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'desktopLogo',
                'Desktop Logo',
                'frontend/_public/src/img/logos/logo--tablet.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $logoTab->addElement($fieldSet);

        $fieldSet = $this->createFieldSet(
            'Icons',
            'Icons',
            [
                'attributes' => [
                    'padding' => '10',
                    'margin' => '5',
                    'layout' => 'anchor',
                    'defaults' => ['labelWidth' => 155, 'anchor' => '100%']
                ],
            ]
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'appleTouchIcon',
                'Apple Touch Icon',
                'frontend/_public/src/img/apple-touch-icon-precomposed.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'setPrecomposed',
                'Precomposed Icon',
                true
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'win8TileImage',
                'Windows Mobile Image',
                'frontend/_public/src/img/win-tile-image.png',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createMediaField(
                'favicon',
                'Favicon',
                'frontend/_public/src/img/favicon.ico',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $logoTab->addElement($fieldSet);

        $tabPanel->addTab($logoTab);
        $tabPanel->addTab($this->createPaymentShippingIcons());
        $tabPanel->addTab($this->createSocialMedia());
        $tabPanel->addTab($this->createScrollTab());



        $tab->addElement($tabPanel);

        return $tab;
    }

    private function createBasicFieldSet()
    {
        $attributes = array_merge($this->fieldSetDefaults, ['height' => 130]);
        $fieldSet = $this->createFieldSet(
            'basic_field_set',
            '__responsive_tab_general_fieldset_base__',
            ['attributes' => $attributes]
        );

        $fieldSet->addElement(
            $this->createColorPickerField(
                'brand-primary',
                '@brand-primary',
                $this->themeColorDefaults['brand-primary']
            )
        );
        $fieldSet->addElement(
            $this->createColorPickerField(
                'brand-primary-light',
                '@brand-primary-light',
                $this->themeColorDefaults['brand-primary-light']
            )
        );
        $fieldSet->addElement(
            $this->createColorPickerField(
                'brand-secondary',
                '@brand-secondary',
                $this->themeColorDefaults['brand-secondary']
            )
        );
        $fieldSet->addElement(
            $this->createColorPickerField(
                'brand-secondary-dark',
                '@brand-secondary-dark',
                $this->themeColorDefaults['brand-secondary-dark']
            )
        );

        return $fieldSet;
    }

    private function createColorConfigTab()
    {
        $tab = $this->createTab(
            'responsive_tab',
            'Design-Konfiguration'
        );

        $tabPanel = $this->createTabPanel(
            'bottom_tab_panel',
            [
                'attributes' => [
                    'plain' => true,
                ],
            ]
        );

        $tabPanel->addTab($this->createGeneralTab());
        $tabPanel->addTab($this->createTypographyTab());
        $tabPanel->addTab($this->createButtonsTab());
        $tabPanel->addElement($this->createTitanHeaderSFTab());

        $tab->addElement($tabPanel);

        return $tab;
    }


    private function createGeneralTab()
    {
        $tab = $this->createTab(
            'general_tab',
            '__responsive_tab_general__',
            [
                'attributes' => [
                    'autoScroll' => true,
                ],
            ]
        );

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 130]);
        $fieldSetGrey = $this->createFieldSet(
            'grey_tones',
            '__responsive_tab_general_fieldset_grey__',
            ['attributes' => $attributes]
        );

        $fieldSetGrey->addElement(
            $this->createColorPickerField(
                'gray',
                '@gray',
                $this->themeColorDefaults['gray']
            )
        );
        $fieldSetGrey->addElement(
            $this->createColorPickerField(
                'gray-light',
                '@gray-light',
                $this->themeColorDefaults['gray-light']
            )
        );
        $fieldSetGrey->addElement(
            $this->createColorPickerField(
                'gray-dark',
                '@gray-dark',
                $this->themeColorDefaults['gray-dark']
            )
        );
        $fieldSetGrey->addElement(
            $this->createColorPickerField(
                'border-color',
                '@border-color',
                $this->themeColorDefaults['border-color']
            )
        );

        $basicFieldSet = $this->createBasicFieldSet();
        $tab->addElement($basicFieldSet);
        $tab->addElement($fieldSetGrey);

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 220]);
        $fieldSetScaffolding = $this->createFieldSet(
            'scaffolding',
            '__responsive_tab_general_fieldset_scaffolding__',
            ['attributes' => $attributes]
        );

        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'body-bg',
                '@body-bg',
                $this->themeColorDefaults['body-bg']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'text-color',
                '@text-color',
                $this->themeColorDefaults['text-color']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'text-color-dark',
                '@text-color-dark',
                $this->themeColorDefaults['text-color-dark']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'link-color',
                '@link-color',
                $this->themeColorDefaults['link-color']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'link-hover-color',
                '@link-hover-color',
                $this->themeColorDefaults['link-hover-color']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'rating-star-color',
                '@rating-star-color',
                $this->themeColorDefaults['rating-star-color']
            )
        );

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 220]);
        $fieldSetScaffolding = $this->createFieldSet(
            'scaffolding',
            '__responsive_tab_general_fieldset_scaffolding__',
            ['attributes' => $attributes]
        );

        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'body-bg',
                '@body-bg',
                $this->themeColorDefaults['body-bg']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'text-color',
                '@text-color',
                $this->themeColorDefaults['text-color']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'text-color-dark',
                '@text-color-dark',
                $this->themeColorDefaults['text-color-dark']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'link-color',
                '@link-color',
                $this->themeColorDefaults['link-color']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'link-hover-color',
                '@link-hover-color',
                $this->themeColorDefaults['link-hover-color']
            )
        );
        $fieldSetScaffolding->addElement(
            $this->createColorPickerField(
                'rating-star-color',
                '@rating-star-color',
                $this->themeColorDefaults['rating-star-color']
            )
        );

        $tab->addElement($fieldSetScaffolding);

        return $tab;
    }

    private function createTypographyTab()
    {
        $tab = $this->createTab(
            'typo_tab',
            '__responsive_tab_typo__',
            ['attributes' => ['autoScroll' => true]]
        );

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 170]);
        $fieldSetBasic = $this->createFieldSet(
            'typo_base',
            '__responsive_tab_typo_fieldset_base__',
            ['attributes' => $attributes]
        );

        $fieldSetBasic->addElement(
            $this->createTextField(
                'font-base-stack',
                '@font-base-stack',
                $this->themeFontDefaults['font-base-stack']
            )
        );
        $fieldSetBasic->addElement(
            $this->createTextField(
                'font-headline-stack',
                '@font-headline-stack',
                $this->themeFontDefaults['font-headline-stack']
            )
        );
        $fieldSetBasic->addElement(
            $this->createTextField(
                'font-size-base',
                '@font-size-base',
                $this->themeFontDefaults['font-size-base']
            )
        );
        $fieldSetBasic->addElement(
            $this->createTextField(
                'font-base-weight',
                '@font-base-weight',
                $this->themeFontDefaults['font-base-weight']
            )
        );
        $fieldSetBasic->addElement(
            $this->createTextField(
                'font-light-weight',
                '@font-light-weight',
                $this->themeFontDefaults['font-light-weight']
            )
        );
        $fieldSetBasic->addElement(
            $this->createTextField(
                'font-bold-weight',
                '@font-bold-weight',
                $this->themeFontDefaults['font-bold-weight']
            )
        );

        $tab->addElement($fieldSetBasic);

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 170]);
        $fieldSetHeadlines = $this->createFieldSet(
            'typo_headlines',
            '__responsive_tab_typo_fieldset_headlines__',
            ['attributes' => $attributes]
        );

        $fieldSetHeadlines->addElement(
            $this->createTextField(
                'font-size-h1',
                '@font-size-h1',
                $this->themeFontDefaults['font-size-h1']
            )
        );
        $fieldSetHeadlines->addElement(
            $this->createTextField(
                'font-size-h2',
                '@font-size-h2',
                $this->themeFontDefaults['font-size-h2']
            )
        );
        $fieldSetHeadlines->addElement(
            $this->createTextField(
                'font-size-h3',
                '@font-size-h3',
                $this->themeFontDefaults['font-size-h3']
            )
        );
        $fieldSetHeadlines->addElement(
            $this->createTextField(
                'font-size-h4',
                '@font-size-h4',
                $this->themeFontDefaults['font-size-h4']
            )
        );
        $fieldSetHeadlines->addElement(
            $this->createTextField(
                'font-size-h5',
                '@font-size-h5',
                $this->themeFontDefaults['font-size-h5']
            )
        );
        $fieldSetHeadlines->addElement(
            $this->createTextField(
                'font-size-h6',
                '@font-size-h6',
                $this->themeFontDefaults['font-size-h6']
            )
        );

        $tab->addElement($fieldSetHeadlines);

        return $tab;
    }

    private function createButtonsTab()
    {
        $tab = $this->createTab(
            'buttons_tab',
            '__responsive_tab_buttons__',
            [
                'attributes' => [
                    'autoScroll' => true,
                ],
            ]
        );

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 90]);
        $fieldSetButtons = $this->createFieldSet(
            'buttons_fieldset',
            '__responsive_tab_buttons_fieldset_global__',
            ['attributes' => $attributes]
        );

        $fieldSetButtons->addElement(
            $this->createTextField(
                'btn-font-size',
                '@btn-font-size',
                $this->themeFontDefaults['btn-font-size']
            )
        );
        $fieldSetButtons->addElement(
            $this->createTextField(
                'btn-icon-size',
                '@btn-icon-size',
                $this->themeFontDefaults['btn-icon-size']
            )
        );

        $tab->addElement($fieldSetButtons);

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 150]);
        $fieldSetDefaultButtons = $this->createFieldSet(
            'buttons_default_fieldset',
            '__responsive_tab_buttons_fieldset_default__',
            ['attributes' => $attributes]
        );

        $fieldSetDefaultButtons->addElement(
            $this->createColorPickerField(
                'btn-default-bg',
                '@btn-default-bg',
                $this->themeColorDefaults['btn-default-bg']
            )
        );
        $fieldSetDefaultButtons->addElement(
            $this->createColorPickerField(
                'btn-default-text-color',
                '@btn-default-text-color',
                $this->themeColorDefaults['btn-default-text-color']
            )
        );
        $fieldSetDefaultButtons->addElement(
            $this->createColorPickerField(
                'btn-default-border-color',
                '@btn-default-border-color',
                $this->themeColorDefaults['btn-default-border-color']
            )
        );
        $fieldSetDefaultButtons->addElement(
            $this->createColorPickerField(
                'btn-default-hover-bg',
                '@btn-default-hover-bg',
                $this->themeColorDefaults['btn-default-hover-bg']
            )
        );
        $fieldSetDefaultButtons->addElement(
            $this->createColorPickerField(
                'btn-default-hover-text-color',
                '@btn-default-hover-text-color',
                $this->themeColorDefaults['btn-default-hover-text-color']
            )
        );
        $fieldSetDefaultButtons->addElement(
            $this->createColorPickerField(
                'btn-default-hover-border-color',
                '@btn-default-hover-border-color',
                $this->themeColorDefaults['btn-default-hover-border-color']
            )
        );

        $tab->addElement($fieldSetDefaultButtons);

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 170]);
        $fieldSetPrimaryButtons = $this->createFieldSet(
            'buttons_primary_fieldset',
            '__responsive_tab_buttons_fieldset_primary__',
            ['attributes' => $attributes]
        );

        $fieldSetPrimaryButtons->addElement(
            $this->createColorPickerField(
                'btn-primary-bg',
                '@btn-primary-bg',
                $this->themeColorDefaults['btn-primary-bg']
            )
        );
        $fieldSetPrimaryButtons->addElement(
            $this->createColorPickerField(
                'btn-primary-text-color',
                '@btn-primary-text-color',
                $this->themeColorDefaults['btn-primary-text-color']
            )
        );
        $fieldSetPrimaryButtons->addElement(
            $this->createColorPickerField(
                'btn-primary-border-color',
                '@btn-primary-border-color',
                $this->themeColorDefaults['btn-primary-border-color']
            )
        );
        $fieldSetPrimaryButtons->addElement(
            $this->createColorPickerField(
                'btn-primary-hover-bg',
                '@btn-primary-hover-bg',
                $this->themeColorDefaults['btn-primary-hover-bg']
            )
        );
        $fieldSetPrimaryButtons->addElement(
            $this->createColorPickerField(
                'btn-primary-hover-text-color',
                '@btn-primary-hover-text-color',
                $this->themeColorDefaults['btn-primary-hover-text-color']
            )
        );
        $fieldSetPrimaryButtons->addElement(
            $this->createColorPickerField(
                'btn-primary-hover-border-color',
                '@btn-primary-hover-border-color',
                $this->themeColorDefaults['btn-primary-hover-border-color']
            )
        );

        $tab->addElement($fieldSetPrimaryButtons);

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 170]);
        $fieldSetSecondaryButtons = $this->createFieldSet(
            'buttons_secondary_fieldset',
            '__responsive_tab_buttons_fieldset_secondary__',
            ['attributes' => $attributes]
        );

        $fieldSetSecondaryButtons->addElement(
            $this->createColorPickerField(
                'btn-secondary-bg',
                '@btn-secondary-bg',
                $this->themeColorDefaults['btn-secondary-bg']
            )
        );
        $fieldSetSecondaryButtons->addElement(
            $this->createColorPickerField(
                'btn-secondary-text-color',
                '@btn-secondary-text-color',
                $this->themeColorDefaults['btn-secondary-text-color']
            )
        );
        $fieldSetSecondaryButtons->addElement(
            $this->createColorPickerField(
                'btn-secondary-border-color',
                '@btn-secondary-border-color',
                $this->themeColorDefaults['btn-secondary-border-color']
            )
        );
        $fieldSetSecondaryButtons->addElement(
            $this->createColorPickerField(
                'btn-secondary-hover-bg',
                '@btn-secondary-hover-bg',
                $this->themeColorDefaults['btn-secondary-hover-bg']
            )
        );
        $fieldSetSecondaryButtons->addElement(
            $this->createColorPickerField(
                'btn-secondary-hover-text-color',
                '@btn-secondary-hover-text-color',
                $this->themeColorDefaults['btn-secondary-hover-text-color']
            )
        );
        $fieldSetSecondaryButtons->addElement(
            $this->createColorPickerField(
                'btn-secondary-hover-border-color',
                '@btn-secondary-hover-border-color',
                $this->themeColorDefaults['btn-secondary-hover-border-color']
            )
        );

        $tab->addElement($fieldSetSecondaryButtons);

        return $tab;
    }

    private function createMainConfigTab()
    {
        $tab = $this->createTab(
            'responsiveMain',
            '__responsive_tab_header__',
            [
                'attributes' => [
                    'layout' => 'anchor',
                    'autoScroll' => true,
                    'padding' => '0',
                    'defaults' => ['anchor' => '100%'],
                ],
            ]
        );

        $fieldSet = $this->createFieldSet(
            'bareGlobal',
            '__global_configuration__',
            [
                'attributes' => [
                    'padding' => '10',
                    'margin' => '5',
                    'layout' => 'anchor',
                    'defaults' => ['labelWidth' => 155, 'anchor' => '100%'],
                ],
            ]
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'offcanvasCart',
                '__offcanvas_cart__',
                true,
                $this->getLabelAttribute(
                    'offcanvas_cart_description'
                )
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'offcanvasOverlayPage',
                '__offcanvas_move_method__',
                true,
                $this->getLabelAttribute(
                    'offcanvas_move_method_description'
                )
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'focusSearch',
                '__focus_search__',
                false,
                $this->getLabelAttribute(
                    'focus_search_description'
                )
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'displaySidebar',
                '__display_sidebar__',
                true,
                $this->getLabelAttribute(
                    'display_sidebar_description'
                )
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'sidebarFilter',
                '__show_filter_in_sidebar__',
                true,
                $this->getLabelAttribute(
                    'show_filter_in_sidebar_description'
                )
            )
        );

        //OPTIONS

        $fieldSet->addElement(
            $this->createCheckboxField(
                'sidebarFilterOpened',
                '__sidebar-filter-opened__',
                true,
                ['attributes' => ['boxLabel' => '__sidebar-filter-opened-label__']]
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'showSidebarCategories',
                '__show-sidebar-categories__',
                true,
                ['attributes' => ['boxLabel' => '__show-sidebar-categories-label__']]
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'removeHomeLink',
                '__remove-home-link__',
                false,
                ['attributes' => ['boxLabel' => '__remove-home-link-label__']]
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'logoCentered',
                '__logo-centered__',
                true,
                ['attributes' => ['boxLabel' => '__logo-centered-label__']]
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'stickyNavigation',
                'Sticky Navigation',
                false,
                ['attributes' => ['boxLabel' => '__sticky-navigation-label__']]
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'checkoutHeader',
                '__checkout_header__',
                true,
                $this->getLabelAttribute(
                    'checkout_header_description'
                )
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'checkoutFooter',
                '__checkout_footer__',
                true,
                $this->getLabelAttribute(
                    'checkout_footer_description'
                )
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'infiniteScrolling',
                '__enable_infinite_scrolling__',
                true,
                $this->getLabelAttribute(
                    'enable_infinite_scrolling_description'
                )
            )
        );

        $fieldSet->addElement(
            $this->createNumberField(
                'infiniteThreshold',
                '__infinite_threshold__',
                4,
                $this->getLabelAttribute(
                    'infinite_threshold_description',
                    'supportText'
                )
            )
        );

        $fieldSet->addElement(
            $this->createSelectField(
                'lightboxZoomFactor',
                '__lightbox_zoom_factor__',
                0,
                [
                    ['value' => 0, 'text' => '__lightbox_zoom_factor_auto__'],
                    ['value' => 1, 'text' => '__lightbox_zoom_factor_none__'],
                    ['value' => 2, 'text' => '__lightbox_zoom_factor_2x__'],
                    ['value' => 3, 'text' => '__lightbox_zoom_factor_3x__'],
                    ['value' => 5, 'text' => '__lightbox_zoom_factor_5x__'],
                ],
                $this->getLabelAttribute(
                    'lightbox_zoom_factor_description',
                    'supportText'
                )
            )
        );

        $fieldSet->addElement(
            $this->createTextField(
                'appleWebAppTitle',
                '__apple_web_app_title__',
                '',
                ['attributes' => ['lessCompatible' => false]]
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'ajaxVariantSwitch',
                '__ajax_variant_switch__',
                true,
                ['attributes' => [
                    'lessCompatible' => false,
                    'boxLabel' => Shopware()->Snippets()->getNamespace('themes/bare/backend/config')->get('ajax_variant_switch_description'),
                ]]
            )
        );

        $fieldSet->addElement(
            $this->createCheckboxField(
                'asyncJavascriptLoading',
                '__async_javascript_loading__',
                true,
                ['attributes' => [
                    'lessCompatible' => false,
                    'boxLabel' => Shopware()->Snippets()->getNamespace('themes/bare/backend/config')->get('async_javascript_loading_description'),
                ]]
            )
        );

        $tab->addElement($fieldSet);

        $fieldSet = $this->createFieldSet(
            'responsiveGlobal',
            '__advanced_settings__',
            [
                'attributes' => [
                    'padding' => '10',
                    'margin' => '5',
                    'layout' => 'anchor',
                    'defaults' => ['anchor' => '100%', 'labelWidth' => 155],
                ],
            ]
        );

        $fieldSet->addElement(
            $this->createTextAreaField(
                'additionalCssData',
                '__additional_css_data__',
                '',
                ['attributes' => ['xtype' => 'textarea', 'lessCompatible' => false], 'help' => '__additional_css_data_description__']
            )
        );

        $fieldSet->addElement(
            $this->createTextAreaField(
                'additionalJsLibraries',
                '__additional_js_libraries__',
                '',
                ['attributes' => ['xtype' => 'textarea', 'lessCompatible' => false], 'help' => '__additional_js_libraries_description__']
            )
        );

        $tab->addElement($fieldSet);

        return $tab;
    }

    /* Actionshop TAB */
    private function createActionshopConfigTab()
    {
        $tabas = $this->createTab(
            'responsive_tab',
            'Action-Shop24 Layout'
        );

        $tabPanelAs = $this->createTabPanel(
            'bottom_tab_panel',
            [
                'attributes' => [
                    'plain' => true,
                ],
            ]
        );

        $tabPanelAs->addTab($this->createActionshopGeneralTab());
        $tabas->addElement($tabPanelAs);

        return $tabas;
    }
    private function createActionshopGeneralTab()
    {
        $tabas = $this->createTab(
            'actionshop_tab',
            'Positionierungen',
            ['attributes' => ['autoScroll' => true]]
        );

        $attributes = array_merge($this->fieldSetDefaults, ['height' => 370]);

        $fieldSetAsPos = $this->createFieldSet(
            'aspos_base',
            'Scroll-To-Top',
            ['attributes' => $attributes]
        );

        $fieldSetAsPos->addElement(
            $this->createCheckboxField(
                'scrollToTopEnabled',
                'Scroll-To-Top Button',
                true
            )
        );

        $fieldSetAsPos->addElement(
            $this->createTextField(
                'scrollToTopEnabledBottom',
                'Abstand von unten',
                $this->themeFontDefaults['scrolltotop-bottom']
            )
        );

        $fieldSetAsPos->addElement(
            $this->createTextField(
                'scrollToTopEnabledRight',
                'Abstand von Rechts',
                $this->themeFontDefaults['scrolltotop-right']
            )
        );


        $fieldSetAsPos->addElement(
            $this->createTextField(
                'scrollToTopEnabledSize',
                'Buttongrösse',
                $this->themeFontDefaults['scrolltotop-size']
            )
        );

        $fieldSetAsPos->addElement(
            $this->createTextField(
                'scrollToTopEnabledIconSize',
                'IconGrösse',
                $this->themeFontDefaults['scrolltotop-fontsize']
            )
        );

        $fieldSetAsPos->addElement(
            $this->createColorPickerField(
                'scrollToTopEnabledIconColor',
                'Icon Farbe',
                $this->themeFontDefaults['scrolltotop-iconColor']
            )
        );
        $fieldSetAsPos->addElement(
            $this->createColorPickerField(
                'scrollToTopEnabledIconColorHover',
                'Icon Hover Farbe',
                $this->themeFontDefaults['scrolltotop-iconColorHover']
            )
        );


        $fieldSetAsPos->addElement(
            $this->createColorPickerField(
                'scrollToTopEnabledBgColor',
                'Hintergrundfarbe',
                $this->themeFontDefaults['scrolltotop-backgroundcolor']
            )
        );
        $fieldSetAsPos->addElement(
            $this->createColorPickerField(
                'scrollToTopEnabledBgColorHover',
                'Hintergrundfarbe Hover',
                $this->themeFontDefaults['scrolltotop-backgroundhover']
            )
        );
          /*

        $fieldSetAsPos->addElement(
            $this->createColorPickerField(
                'scrollToTopEnabledIconSize',
                'Hintergrund (@scrolltotop-bg)',
                $this->themeColorDefaults['@scrolltotop-bg']
            )
        );

        $fieldSetAsPos->addElement(
            $this->createColorPickerField(
                'scrollToTopEnabledIconSize',
                'Icon (@scrolltotop-color)',
                $this->themeColorDefaults['@scrolltotop-color']
            )
        );

*/


        $tabas->addElement($fieldSetAsPos);
        return $tabas;
    }




    private function getLabelAttribute($snippetName, $labelType = 'boxLabel')
    {
        $description = Shopware()->Snippets()->getNamespace('themes/bare/backend/config')->get($snippetName);

        return ['attributes' => [$labelType => $description]];
    }
}