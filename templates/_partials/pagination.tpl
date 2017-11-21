{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
     
     
    
     
<nav class="pagination-page" aria-label="Page navigation">
    <span class="pagination-page__summary">
        {block name='pagination_summary'}
            {l s='Showing %from%-%to% of %total% item(s)' sprintf=['%from%' => $pagination.items_shown_from ,'%to%' => $pagination.items_shown_to, '%total%' => $pagination.total_items] d='Shop.Theme.Catalog'}
        {/block}
    </span>


  {block name='pagination_page_list'}
    <ul class="pagination-page__list">
      {foreach from=$pagination.pages item="page"}
        <li  class="pagination-page__item{if $page.current} pagination-page__item--current{/if}" >
          {if $page.type === 'spacer'}
            <span class="spacer">&hellip;</span>
          {else}
            {*
                TODO: przetestować wyłaczenie next / prev
            *}
            <a
               {if $page.type === 'previous'}
                    rel="prev"
                    aria-label="Previous"
               {elseif $page.type === 'next'}
                    rel="next"
                    aria-label="Next"
               {else}
                    rel="nofollow"
               {/if}
              href="{$page.url}"
              class="pagination-page__item-link {['disabled' => !$page.clickable, 'js-search-link' => true]|classnames}"
            >
              {if $page.type === 'previous'}
                <span aria-hidden="true" class="pagination-page__icon--prev"></span>
                <span class="sr-only">{l s='Previous' d='Shop.Theme.Actions'}</span>
              {elseif $page.type === 'next'}
                <span aria-hidden="true" class="pagination-page__icon--next"></span>
                <span class="sr-only">{l s='Next' d='Shop.Theme.Actions'}</span>
              {else}
                {$page.page}
              {/if}
            </a>
          {/if}
        </li>
      {/foreach}
    </ul>
  {/block}
</nav>
