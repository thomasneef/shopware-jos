<div class="logo-main block-group" role="banner">

    {* Main shop logo *}
    {block name='frontend_index_logo'}
        <div class="logo--shop block">
            {s name="IndexLinkDefault" namespace="frontend/index/index" assign="snippetIndexLinkDefault"}{/s}
            <a class="logo--link" href="{url controller='index'}" title="{"{config name=shopName}"|escapeHtml} - {$snippetIndexLinkDefault|escape}">
                <picture>
                    <source srcset="{link file=$theme.desktopLogo}" media="(min-width: 78.75em)">
                    <source srcset="{link file=$theme.tabletLandscapeLogo}" media="(min-width: 64em)">
                    <source srcset="{link file=$theme.tabletLogo}" media="(min-width: 48em)">
                    <img srcset="{link file=$theme.mobileLogo}" alt="{"{config name=shopName}"|escapeHtml} - {$snippetIndexLinkDefault|escape}" />
                </picture>
            </a>
        </div>
    {/block}

    {* Support Info *}
    {block name='frontend_index_logo_supportinfo'}
        {if $theme.checkoutHeader && {controllerName|lower} === 'checkout' && {controllerAction|lower} !== 'cart'}
            <div class="logo--supportinfo block">
                {s name='RegisterSupportInfo' namespace='frontend/register/index'}{/s}
            </div>
        {/if}
    {/block}

    {* Trusted Shops *}
    {block name='frontend_index_logo_trusted_shops'}{/block}
</div>



<div class="logo-main-minimal " role="banner">

    <div class="logo--shop-minimal">
        {s name="IndexLinkDefault" namespace="frontend/index/index" assign="snippetIndexLinkDefault"}{/s}
        <a class="logo--link-minimal" href="{url controller='index'}" title="{"{config name=shopName}"|escapeHtml} - {$snippetIndexLinkDefault|escape}">
            <picture>
                <img srcset="{link file=$theme.mobileLogo}" alt="{"{config name=shopName}"|escapeHtml} - {$snippetIndexLinkDefault|escape}" />
            </picture>
        </a>
    </div>



    <div class="jos-minimal-teaser"> <span class="jos-minimal-teaser-text"> {s namespace='frontend/index/index' name="IndexMinimalTeaser"}
                <p class="jos-minimal-teaser-text-top">Fragen zu deiner Bestellung?</p>
                <p class="jos-minimal-teaser-text-bottom">Wir sind Mo-Fr von 9:00 bis 16:00 Uhr per Chat für dich da</p>
    {/s}</span></div>

    <div class="jos-minimal-shopreturn"> <a href="{url controller='index'}"  class="btn is--small jos-minimal-shopreturn-link"> {s namespace='frontend/index/index' name="IndexMinimalReturn"}<i class="fal fa-chevron-left"></i> zurück zum Shop{/s}</a></div>

</div>