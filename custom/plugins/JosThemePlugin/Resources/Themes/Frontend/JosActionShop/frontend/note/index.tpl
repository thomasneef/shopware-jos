{extends file='parent:frontend/note/index.tpl'}

{* Infotext *}
{block name="frontend_note_index_welcome"}
    <div class="account--welcome panel jos-note">
        {block name="frontend_note_index_welcome_headline"}
            <h1 class="panel--title jos-note-title">{s name="NoteHeadline"}{/s}</h1>
        {/block}

        {block name="frontend_note_index_welcome_content"}
        {/block}
    </div>
{/block}

{* Account Sidebar *}
{block name="frontend_index_left_categories"}
    {block name="frontend_account_sidebar"}
        {*include file="frontend/account/sidebar.tpl"*}
    {/block}

    {* Categories headline *}
    {block name="frontend_index_left_categories_headline"}
        {*
        <div class="categories--headline navigation--headline">
            {s namespace='frontend/index/menu_left' name="IndexSidebarCategoryHeadline"}{/s}
        </div>
        *}
    {/block}





    {* Actual include of the categories *}
    {block name='frontend_index_left_categories_inner'}
        {if $Controller !== 'custom'}
            <div class="sidebar--categories-navigation">
                {include file='frontend/index/sidebar-categories.tpl'}
            </div>
        {/if}
    {/block}

{/block}