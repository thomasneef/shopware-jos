{block name='frontend_index_left_categories_inner'}
    {block name='neef_hide_left_category__frontend_index_left_categories_inner__override'}
        {if !$emptyCategories}
            <div class="sidebar--categories-navigation">
                {include file='frontend/index/sidebar-categories.tpl' sCategories=$sCategoriesFiltered}
            </div>
        {/if}
    {/block}
{/block}