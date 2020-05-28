{extends file="parent:frontend/checkout/shipping_payment.tpl"}

{* Shop header *}
{block name='frontend_index_navigation'}
    {if !$theme.checkoutHeader}
        {$smarty.block.parent}
    {else}
        {include file="frontend/checkout/header.tpl"}
    {/if}
{/block}

{* Back to the shop button *}
{block name='frontend_index_logo_trusted_shops'}
{/block}

{* Hide sidebar left *}
{block name='frontend_index_content_left'}
{/block}

{* Hide breadcrumb *}
{block name='frontend_index_breadcrumb'}{/block}

{* Step box *}
{block name='frontend_index_navigation_categories_top'}
    {if !$theme.checkoutHeader}
        {$smarty.block.parent}
    {/if}

    {include file="frontend/register/steps.tpl" sStepActive="paymentShipping"}
{/block}

{* Footer *}
{block name="frontend_index_footer"}
    {if !$theme.checkoutFooter}
        {$smarty.block.parent}
    {else}
        {block name="frontend_index_checkout_shipping_payment_footer"}
            {include file="frontend/index/footer_minimal.tpl"}
        {/block}
    {/if}
{/block}

{* Main content *}
{block name="frontend_index_content"}
    <div class="content content--confirm product--table" data-ajax-shipping-payment="true">
        {include file="frontend/checkout/shipping_payment_core.tpl"}
    </div>
{/block}
