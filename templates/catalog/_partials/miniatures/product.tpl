{block name='product_miniature_item'}
  <article class="product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">

    {block name='product_thumbnail'}
      <a href="{$product.url}" class="product-miniature__thumbnail-link">
        <img
          src = "{$product.cover.medium.url}"
          alt = "{$product.cover.legend}"
          class="product-miniature__thumbnail-img"
          data-full-size-image-url = "{$product.cover.large.url}"
        >
      </a>
    {/block}

    {block name='product_name'}
      <h3 class="product-miniature__title" itemprop="name"><a href="{$product.url}">{$product.name}</a></h3>
    {/block}

    {block name='product_description_short'}
      <div class="product-miniature__description-short" itemprop="description">{$product.description_short nofilter}</div>
    {/block}

    {block name='product_list_actions'}
      <div class="product-miniature__actions">
        {if $product.add_to_cart_url}
            <a
              class = "product-miniature__actions--add-to-cart"
              href  = "{$product.add_to_cart_url}"
              rel   = "nofollow"
              data-id-product="{$product.id_product}"
              data-id-product-attribute="{$product.id_product_attribute}"
              data-link-action="add-to-cart"
            >{l s='Add to cart' d='Shop.Theme.Actions'}</a>
        {/if}
        {hook h='displayProductListFunctionalButtons' product=$product}
      </div>
    {/block}

    {block name='product_quick_view'}
    {/block}

    {block name='product_variants'}
      {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
    {/block}

    {block name='product_price_and_shipping'}
      {if $product.show_price}
        <div class="product-miniature__price-and-shipping">
          {if $product.has_discount}
            {hook h='displayProductPriceBlock' product=$product type="old_price"}

            <span class="product-miniature__price-and-shipping product-miniature__price-and-shipping--regular-price">{$product.regular_price}</span>
            {if $product.discount_type === 'percentage'}
              <span class="product-miniature__price-and-shipping product-miniature__price-and-shipping--discount-percentage">{$product.discount_percentage}</span>
            {elseif $product.discount_type === 'amount'}
              <span class="product-miniature__price-and-shipping product-miniature__price-and-shipping--discount-amount">{$product.discount_amount_to_display}</span>
            {/if}
          {/if}

          {hook h='displayProductPriceBlock' product=$product type="before_price"}

          <span itemprop="price" class="price">{$product.price}</span>

          {hook h='displayProductPriceBlock' product=$product type="unit_price"}

          {hook h='displayProductPriceBlock' product=$product type="weight"}
        </div>
      {/if}
    {/block}

    {block name='product_flags'}
      <ul class="product-miniature__flags">
        {foreach from=$product.flags item=flag}
          <li class="product-miniature__flags-item product-miniature__flags-item--{$flag.type}">{$flag.label}</li>
        {/foreach}
      </ul>
    {/block}

    {block name='product_availability'}
      {if $product.show_availability}
        {* availability may take the values "available" or "unavailable" *}
        <span class="product-miniature__stock product-miniature__stock--{$product.availability}">{$product.availability_message}</span>
      {/if}
    {/block}

    {hook h='displayProductListReviews' product=$product}

  </article>
{/block}
