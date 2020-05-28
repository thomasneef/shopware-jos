{extends file="parent:frontend/compare/col.tpl"}



{* Article pseudoprice *}
{block name='frontend_compare_price_pseudoprice'}
	{if $sArticle.has_pseudoprice}
		<span class="price--pseudo">

			{block name='frontend_compare_price_pseudoprice_before'}
				{s name="priceDiscountLabel" namespace="frontend/detail/data"}{/s}
			{/block}

			<span class="price--pseudoprice">
				{$sArticle.pseudoprice|currency}
			</span>

			{block name='frontend_compare_price_pseudoprice_after'}
				{s name="priceDiscountInfo" namespace="frontend/detail/data"}{/s}
			{/block}
		</span>
	{/if}
{/block}


{* Article normal or discount price *}
{block name='frontend_compare_price_normal'}
	<span class="price--normal{if $sArticle.has_pseudoprice} price--reduced{/if}">
		{if $sArticle.priceStartingFrom}
			{s name="ComparePriceFrom"}{/s}
		{/if}

		{$sArticle.price|currency}
	</span>
{/block}



{* Article unit price *}
{block name='frontend_compare_unitprice'}
{/block}




