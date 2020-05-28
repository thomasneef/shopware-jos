{block name="frontend_index_minimal_footer"}
    <div class="jos-footer-minimal">
        <div class="container footer-minimal">

            {* Service menu *}
            {block name="frontend_index_minimal_footer_menu"}
                <div class="footer--service-menu">
                    {include file="widgets/index/menu.tpl" sGroup=left}
                </div>
            {/block}

            {* Vat info *}
            {if !$hideCopyrightNotice}
                {block name='frontend_index_minimal_footer_vat_info'}
                {/block}

                {* Copyright *}
                {block name="frontend_index_minimal_footer_copyright"}
                    <div class="copyright">© 2020 German Sport Guns GmbH – Alle Rechte vorbehalten. </div>
                {/block}
            {/if}
        </div>
    </div>
{/block}
