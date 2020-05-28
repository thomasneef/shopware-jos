    <header class="header-main jos-sticky">
        {* Include the top bar navigation *}
        {block name='frontend_index_top_bar_container'}
        {/block}

        {* Article Compare *}
        {block name='frontend_index_navigation_inline'}
        {/block}


        {block name='frontend_index_header_navigation'}
            <div class="container header--navigation">

                {* Logo container *}
                {block name='frontend_index_logo_container'}
                    {include file="frontend/index/logo-container.tpl"}
                {/block}

                {* Shop navigation *}
                {block name='frontend_index_shop_navigation'}
                {/block}

                {block name='frontend_index_container_ajax_cart'}
                    <div class="container--ajax-cart" data-collapse-cart="true"{if $theme.offcanvasCart} data-displayMode="offcanvas"{/if}></div>
                {/block}
            </div>
        {/block}

        {block name='frontend_index_top_bar_mobile_container'}
        {/block}

        {* Maincategories navigation top *}
        {block name='frontend_index_navigation_categories_top'}
        {/block}

        {block name='frontend_index_navigation_steps_top'}
        {/block}
    </header>