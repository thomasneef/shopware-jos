{extends file="parent:frontend/checkout/items/product.tpl"}

    {* Product unit price *}
    {block name='frontend_checkout_cart_item_price'}
    {/block}


{* Additional product information *}
{block name='frontend_checkout_cart_item_details_inline'}
    {block name='frontend_checkout_cart_item_details_essential_features'}
    {/block}
{/block}



    {* Product tax rate *}
    {block name='frontend_checkout_cart_item_tax_price'}{/block}
    {* Accumulated product price *}
    {block name='frontend_checkout_cart_item_total_sum'}
        <div class="panel--td column--total-price is--align-right">
            {block name='frontend_checkout_cart_item_total_price_label'}
                <div class="column--label total-price--label">
                    {s name="CartColumnTotal" namespace="frontend/checkout/cart_header"}{/s}
                </div>
            {/block}
            {$sBasketItem.amount|currency}{block name='frontend_checkout_cart_tax_symbol'}{s name="Star" namespace="frontend/listing/box_article"}{/s}{/block}
        </div>
    {/block}
    {* Remove product from basket *}
    {block name='frontend_checkout_cart_item_delete_article'}
        <div class="panel--td column--actions">
            <form action="{url action='deleteArticle' sDelete=$sBasketItem.id sTargetAction=$sTargetAction}"
                  method="post">
                {s name="CartItemLinkDelete" assign="snippetCartItemLinkDelete"}{/s}
                <button type="submit" class="btn is--small column--actions-link"
                        title="{$snippetCartItemLinkDelete|escape}">
                    <i class="icon--cross"></i>
                </button>
            </form>
        </div>
    {/block}
