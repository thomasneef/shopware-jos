{if $sComparisons}

<div class="jos-compare-grid">
    {block name='frontend_top_navigation_menu_entry'}
        <div class="jos-compare-grid-left">
            <div class="jos-compare-grid-left-title">Vergleich</div>
            <div class="jos-compare-grid-left-icon-left"><i class="fal fa-chevron-left"></i></div>
            <div class="jos-compare-grid-left-preview">
                <span class="jos-compare-grid-left-preview-count compare--quantity">{$sComparisons|count}</span>
            </div>
        </div>
    {/block}



    {block name='frontend_compare_product_list_dropdown'}
        <div class="jos-compare-grid-right">

            <div class="jos-compare-grid-right-list">
                <ul class="compare--list is--rounded" data-product-compare-menu="true" role="menu">
                    {foreach $sComparisons as $compare}
                        {block name='frontend_compare_product_dropdown_entry'}
                            <li class="compare--entry" role="menuitem">
                                {block name='frontend_compare_product_dropdown_article_name'}
                                    <a href="{url controller=detail sArticle=$compare.articleId}" title="{$compare.articlename|escape}" class="compare--link">{$compare.articlename}</a>
                                {/block}

                                {block name='frontend_compare_product_dropdown_article_link'}
                                    <form action="{url controller='compare' action='delete_article' articleID=$compare.articleID}" method="post">
                                        <button type="submit" class="btn btn--item-delete">
                                            <i class="icon--cross compare--icon-remove"></i>
                                        </button>
                                    </form>
                                {/block}
                            </li>
                        {/block}
                    {/foreach}

                    {block name='frontend_compare_product_dropdown_action_start'}
                        <li class="jos-compare-action action-start">
                            <a href="{url controller='compare' action='overlay'}" data-modal-title="{s name="CompareInfoCount"}{/s}" rel="nofollow" class="btn--compare btn--compare-start btn is--primary is--full is--small is--icon-right">
                                {s name="CompareActionStart"}{/s}
                                <i class="icon--arrow-right"></i>
                            </a>
                        </li>
                    {/block}
                    {block name='frontend_compare_product_dropdown_action_delete'}
                        <li class="jos-compare-action action-del">
                            <form action="{url controller='compare' action='delete_all'}" method="post">
                                <button type="submit" class="btn--compare-delete btn--compare btn is--secondary is--small is--full">
                                    {s name="CompareActionDelete"}{/s}
                                </button>
                            </form>
                        </li>
                    {/block}

                </ul>
            </div>
        </div>
    {/block}

</div>




{/if}
{*
{if $sComparisons}
{block name='frontend_right_compare'}
    <div id="mySidenav" class="sidenav">
        <div class="jos-compare">


            <div class="jos-compare-grid">


                <div class="jos-compare-grid-right">


                {block name='frontend_compare_product_list_dropdown'}

                    <div class="jos-compare-grid-right-list">
                        <ul class="jos-compare--list" data-product-compare-menu="true" role="menu">
                        {foreach $sComparisons as $compare}
                            {block name='frontend_compare_product_dropdown_entry'}
                                <li class="compare--entry" role="menuitem">
                                    {block name='frontend_compare_product_dropdown_article_name'}
                                        <a href="{url controller=detail sArticle=$compare.articleId}" title="{$compare.articlename|escape}" class="compare--link">{$compare.articlename}</a>
                                    {/block}

                                    {block name='frontend_compare_product_jos_article_link'}
                                        <form action="{url controller='compare' action='delete_article' articleID=$compare.articleID}" method="post">
                                            <button type="submit" class="btn btn--item-delete">
                                                <i class="fal fa-times compare--icon-remove"></i>
                                            </button>
                                        </form>
                                    {/block}
                                </li>
                            {/block}
                        {/foreach}
                        </ul>
                    </div>





                    <div class="jos-compare-grid-right-action">

                        {block name='frontend_compare_product_dropdown_action_start'}
                            <div class="jos-compare-action-start">
                                <a href="{url controller='compare'}" data-modal-title="{s name="CompareInfoCount"}{/s}" rel="nofollow" class="btn is--secondary is--full is--small is--icon-right btn--compare-start">
                                    {s name="CompareActionStart"}{/s}
                                    <i class="fal fa-check"></i>
                                </a>
                            </div>
                        {/block}

                        {block name='frontend_compare_product_dropdown_action_delete'}
                        <div class="jos-compare-action-deleteall">
                                <form action="{url controller='compare' action='delete_all'}" method="post">
                                    <button type="submit" class="btn is--secondary is--full is--small is--icon-right btn--compare-delete">
                                        {s name="CompareActionDelete"}{/s}
                                        <i class="fal fa-times"></i>
                                    </button>
                                </form>
                        </div>
                        {/block}

                    </div>
                {/block}
                </div>
            </div>
        </div>
    </div>
{/block}
{/if}
*}