<!-- Block search module TOP -->
<div id="search_widget" class="search-widget ps_searchbar" data-search-controller-url="{$search_controller_url}">
	<form method="get" action="{$search_controller_url}">
        
        <div class="ps_searchbar__form input-button">
            <input class="input-button__input" type="text" name="s" value="{$search_string}" placeholder="{l s='Search our catalog' d='Shop.Theme.Catalog'}" aria-label="{l s='Search' d='Shop.Theme.Catalog'}" id="ps_searchbar">
            <span class="input-button__group-button">
              <button type="submit" class="input-button__button" ><i class="input-button__icon--search"></i><span class="input-button__desc">{l s='Search' d='Shop.Theme.Catalog'}</span></button>
            </span>
        </div>
        <input type="hidden" name="controller" value="search">
	</form>
</div>
<!-- /Block search module TOP -->

	