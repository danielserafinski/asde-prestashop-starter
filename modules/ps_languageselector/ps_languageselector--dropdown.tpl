<div class="ps_languageselector">
  <button class="ps_languageselector__title" type="button" id="ps_languageselector" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    {l s='Language:' d='Shop.Theme.Global'}
  </button>
  <div class="ps_languageselector__menu dropdown-menu" aria-labelledby="ps_languageselector">
        {foreach from=$languages item=language}
          <a title="{$language.name_simple}" rel="nofollow" href="{url entity='language' id=$language.id_lang}" class="ps_languageselector__menu-item{if $language.id_lang == $current_language.id_lang} ps_languageselector__menu-item--current{/if}">{$language.name_simple}</a>
        {/foreach}  
  </div>
</div>