<div class="ps_currencyselector">
  <button class="ps_currencyselector__title" type="button" id="ps_currencyselector" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    {l s='Currency:' d='Shop.Theme.Global'}
  </button>
  <div class="ps_currencyselector__menu dropdown-menu" aria-labelledby="ps_currencyselector">
      {foreach from=$currencies item=currency}
          <a title="{$currency.name}" rel="nofollow" href="{$currency.url}" class="ps_currencyselector__menu-item{if $currency.current} ps_currencyselector__menu-item--current{/if}">{$currency.iso_code} {$currency.sign}</a>
      {/foreach}  
  </div>
</div>