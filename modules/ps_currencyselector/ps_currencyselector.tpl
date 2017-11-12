<div class="ps_currencyselector">
  <span class="ps_currencyselector__title"  id="ps_currencyselector">
    {l s='Currency:' d='Shop.Theme.Global'}
  </span>
  <div class="ps_currencyselector__menu" >
      {foreach from=$currencies item=currency}
          <a title="{$currency.name}" rel="nofollow" href="{$currency.url}" class="ps_currencyselector__menu-item{if $currency.current} ps_currencyselector__menu-item--current{/if}">{$currency.iso_code} {$currency.sign}</a>
      {/foreach}  
  </div>
</div>