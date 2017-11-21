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

{function name="categories" nodes=[] depth=1}
  {strip}
    {if $nodes|count}
      <ul class="list-tree" data-depth="{$depth}">
        {foreach from=$nodes item=node}
          <li class="list-tree__item" data-depth="{$depth}">
              <a class="list-tree__item-link" href="{$node.link}">{$node.name}</a>
              {if $node.children}
                <span class="list-tree__icon" data-toggle="collapse" data-target="#list-tree-{$node.id}">
                  <i class="list-tree__icon--close"></i>
                </span>
                <div class="collapse" id="list-tree-{$node.id}">
                  {categories nodes=$node.children depth=$depth+1}
                </div>
              {/if}
          </li>
        {/foreach}
      </ul>
    {/if}
  {/strip}
{/function}

<div class="ps_categorytree">
  <ul class="list-tree" data-depth="0">
    <li class="list-tree__item list-tree__item--heading" data-depth="0"><a class="list-tree__item-link list-tree__item-link--heading" href="{$categories.link nofilter}" >{$categories.name}</a></li>
    {if $categories.children}
        <li class="list-tree__item" data-depth="0">{categories nodes=$categories.children}</li>
    {/if}
  </ul>
</div>
