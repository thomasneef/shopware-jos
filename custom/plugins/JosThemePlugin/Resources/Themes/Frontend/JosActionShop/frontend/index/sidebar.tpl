{block name="frontend_index_sidebar"}
    <aside class="sidebar-main off-canvas">
        {block name="frontend_index_left_inner"}
            {* Mobile specific menu actions *}
            {block name="frontend_index_left_navigation_smartphone"}
                <div class="navigation--smartphone">
                    <ul class="navigation--list ">
                        {* Trigger to close the off canvas menu *}
                        {block name="frontend_index_left_categories_close_menu"}
                            <li class="navigation--entry entry--close-off-canvas">
                                <a href="#close-categories-menu" title="{s namespace='frontend/index/menu_left_mobile' name="IndexActionCloseMenu"}Menü{/s}" class="navigation--link">
                                    <i class="fal fa-times mobile-menu-close"></i>
                                </a>
                            </li>
                        {/block}
                    </ul>

                    {* Switches for currency and language on mobile devices *}
                    {block name="frontend_index_left_switches"}
                        {*
                        <div class="mobile--switches">
                            {action module=widgets controller=index action=shopMenu}
                        </div>
                        *}
                    {/block}
                </div>
            {/block}

            {block name="frontend_index_left_subcategory_config"}
                {* if sCategoryContent is not available use sArticle.categoryID *}
                {if isset($sCategoryContent) && $sCategoryContent.id}
                    {$subCategoryId = $sCategoryContent.id}
                {elseif isset($sArticle) && $sArticle.categoryID}
                    {$subCategoryId = $sArticle.categoryID}
                {elseif isset($sCustomPage) && $sCustomPage.id}
                    {$subCategoryId = $sCustomPage.id}
                {else}
                    {$subCategoryId = 0}
                {/if}
            {/block}

            {block name='frontend_index_left_categories_wrapper'}
                <div class="sidebar--categories-wrapper"
                     data-subcategory-nav="true"
                     data-mainCategoryId="{$sCategoryStart}"
                     data-categoryId="{$subCategoryId}"
                     data-fetchUrl="{if $subCategoryId}{if $sCustomPage}{url module=widgets controller=listing action=getCustomPage pageId={$subCategoryId}}{else}{url module=widgets controller=listing action=getCategory categoryId={$subCategoryId}}{/if}{/if}">

                    {* Sidebar category tree *}
                    {block name='frontend_index_left_categories'}

                        {* Categories headline *}
                        {block name="frontend_index_left_categories_headline"}
                            {*
                            <div class="categories--headline navigation--headline">
                                {s namespace='frontend/index/menu_left' name="IndexSidebarCategoryHeadline"}{/s}
                            </div>
                            *}
                        {/block}


                        {block name="frontend_account_menu_container"}
                        {/block}


                        {* Actual include of the categories *}
                        {block name='frontend_index_left_categories_inner'}
                            <div class="sidebar--categories-navigation">
                                {include file='frontend/index/sidebar-categories.tpl'}
                            </div>
                        {/block}
                    {/block}

                    {* Static sites *}
                    {block name='frontend_index_left_menu'}
                        {*if $Controller == 'account'}
                        {include file='frontend/index/sidebar-categories.tpl'}
                        {/if*}

                        {*include file='frontend/index/sites-navigation.tpl'*}
                    {/block}
                </div>
            {/block}
        {/block}
    </aside>
{/block}
