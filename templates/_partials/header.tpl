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
{block name='header_banner'}
  <aside class="header__banner">
    {hook h='displayBanner'}
  </aside>
{/block}

{block name='header_nav'}
  <nav class="header__nav">
    {hook h='displayNav'}
  </nav>
{/block}

{block name='header_logo'}
 <nav class="header__logo">
  <a class="logo" href="{$urls.base_url}" title="{$shop.name}">
    <h1 class="logo__name">{$shop.name}</h1>
    <img class="logo__pictrue" src="{$shop.logo}" alt="{$shop.name}">
  </a>
 </nav>
{/block}

{block name='header_top'}
  <div class="header__top">
    {hook h='displayTop'}
  </div>

  {hook h='displayNavFullWidth'}

{/block}