{block name="frontend_note_item"}
    <div class="note--item panel--tr">

        {if $sBasketItem.sConfigurator}
            {$detailLink={url controller="detail" sArticle=$sBasketItem.articleID number=$sBasketItem.ordernumber}}
        {else}
            {$detailLink=$sBasketItem.linkDetails}
        {/if}

        {* Article information *}
        {block name="frontend_note_item_info"}
            <div class="note--info panel--td">
                {* Article picture *}
                {block name="frontend_note_item_image"}
                    <div class="note--image-container">
                        {$desc = $sBasketItem.articlename|escape}
                        {if $sBasketItem.image.thumbnails[0]}
                            {if $sBasketItem.image.description}
                                {$desc = $sBasketItem.image.description|escape}
                            {/if}
                            <a href="{$detailLink}" title="{$sBasketItem.articlename|escape}" class="note--image-link">
                                <img srcset="{$sBasketItem.image.thumbnails[0].sourceSet}" alt="{$desc}" title="{$desc|truncate:160}" class="note--image" />
                            </a>

                            {* Zoom picture *}
                            {block name="frontend_note_item_image_zoom"}{/block}
                        {else}
                            <a href="{$detailLink}" title="{$sBasketItem.articlename|escape}" class="note--image-link">
                                <img src="{link file='frontend/_public/src/img/no-picture.jpg'}" alt="{$desc}" title="{$desc|truncate:160}" class="note--image" />
                            </a>
                        {/if}
                    </div>
                {/block}

                {* Article details *}
                {block name="frontend_note_item_details"}
                    <div class="note--details">

                        {* Article name *}
                        {block name="frontend_note_item_details_name"}
                            <a class="note--title" href="{$detailLink}" title="{$sBasketItem.articlename|escape}">
                                {$sBasketItem.articlename|truncate:40}
                            </a>
                        {/block}

                        {* Reviews *}
                        {block name="frontend_note_item_rating"}
                            {if !{config name=VoteDisable}}
                                {include file="frontend/_includes/rating.tpl" points=$sBasketItem.sVoteAverage.average type="aggregated"}
                            {/if}
                        {/block}

                        {* Supplier name *}
                        {block name="frontend_note_item_details_supplier"}
                        {/block}

                        {* Order number *}
                        {block name="frontend_note_item_details_ordernumber"}
                        {/block}

                        {* Date added *}
                        {block name="frontend_note_item_date"}
                            {if $sBasketItem.datum_add}
                                <div class="note--date">
                                    {s name="NoteInfoDate"}{/s} {$sBasketItem.datum_add|date:DATE_MEDIUM}
                                </div>
                            {/if}
                        {/block}

                        {* Delivery information *}
                        {block name="frontend_note_item_delivery"}
                            {if {config name=BASKETSHIPPINGINFO}}
                                <div class="note--delivery{if {config name=VoteDisable}} vote_disabled{/if}"  >
                                    {include file="frontend/plugins/index/delivery_informations.tpl" sArticle=$sBasketItem}
                                </div>
                            {/if}
                        {/block}

                        {block name="frontend_note_index_items"}{/block}
                    </div>
                {/block}
            </div>
        {/block}

        {block name="frontend_note_item_sale"}
            <div class="note--sale panel--td">
                {* Price *}
                {block name="frontend_note_item_price"}
                    {if $sBasketItem.itemInfo}
                        {$sBasketItem.itemInfo}
                    {else}
                        <div class="note--price">{if $sBasketItem.priceStartingFrom}{s namespace='frontend/listing/box_article' name='ListingBoxArticleStartsAt'}{/s} {/if}{$sBasketItem.price|currency}</div>
                    {/if}
                {/block}

                {* Price unit *}
                {block name="frontend_note_item_unitprice"}
                {/block}

                {* Compare product *}
                {block name='frontend_note_item_actions_compare'}
                    {if {config name="compareShow"}}
                        <div class="note--compare">
                            <form action="{url controller='compare' action='add_article' articleID=$sBasketItem.articleID}" method="post">
                                {s name="ListingBoxLinkCompare" assign="snippetListingBoxLinkCompare"}{/s}
                                <button type="submit"
                                   data-product-compare-add="true"
                                   class="compare--link"
                                   title="{$snippetListingBoxLinkCompare|escape}">
                                    <i class="icon--compare"></i> {s name='ListingBoxLinkCompare'}{/s}
                                </button>
                            </form>
                        </div>
                    {/if}

                        {$url = {url controller=checkout action=addArticle} }
                        <form name="sAddToBasket"
                              method="post"
                              action="{$url}"
                              class="buybox--form"
                              data-add-article="true"
                              data-eventName="submit"
                                {if $theme.offcanvasCart}
                            data-showModal="false"
                            data-addArticleUrl="{url controller=checkout action=ajaxAddArticleCart}"
                                {/if}>

                            {block name="frontend_note_product_box_button_buy_order_number"}
                                <input type="hidden" name="sAdd" value="{$sBasketItem.ordernumber}"/>
                            {/block}

                            {block name="frontend_note_product_box_button_buy_button"}
                                <br><button class="basket notebuy buybox--button btn is--primary is--center">
                                {block name="frontend_note_product_box_button_buy_button_text"}
                                    {s namespace="frontend/listing/box_article" name="ListingBuyActionAdd"}{/s}
                                {/block}
                            </button>
                            {/block}
                        </form>

                {/block}
            </div>
        {/block}

        {* Remove article *}
        {block name="frontend_note_item_delete"}
            <form action="{url controller='note' action='delete' sDelete=$sBasketItem.id}" method="post">
                {s name="NoteLinkDelete" assign="snippetNoteLinkDelete"}{/s}
                <button type="submit" title="{$snippetNoteLinkDelete|escape}" class="note--delete">
                    <i class="icon--cross"></i>
                </button>
            </form>
        {/block}
    </div>
{/block}

{* Place article in basket *}
{block name="frontend_note_item_actions_buy"}{/block}