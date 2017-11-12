<div class="ps_customeraccountlinks footer-links">
    <h3 class="footer-links__title">
        <a href="{$urls.pages.my_account}">{l s='Your account' d='Shop.Theme.Customeraccount'}</a>
    </h3>
    <ul id="ps_customeraccountlinks__list" class="footer-links__list collapse show">
        {foreach from=$my_account_urls item=my_account_url}
        <li class="footer-links__item">
            <a class="footer-links__item-link" href="{$my_account_url.url}" title="{$my_account_url.title}" rel="nofollow">
              {$my_account_url.title}
            </a>
        </li>
        {/foreach}
        {hook h='displayMyAccountBlock'}
    </ul>
</div>