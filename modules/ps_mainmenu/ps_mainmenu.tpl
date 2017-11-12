{assign var=_counter value=0}
{function name="menu" nodes=[] depth=0 parent=null}
    {if $nodes|count}
      <ul class="mainmenu-list" data-depth="{$depth}">
        {foreach from=$nodes item=node}
            <li class="mainmenu-item {if $node.current}mainmenu-item--current{/if} {$node.type}" id="{$node.page_identifier}" data-depth="{$depth}">
            {assign var=_counter value=$_counter+1}
              <a class="mainmenu-item_link"
                href="{$node.url}" data-depth="{$depth}"
                data-children="{$node.children|count}"
                {if $node.open_in_new_window} target="_blank" {/if}>
                {$node.label}
              </a>
    
              {if $node.children|count}
                {menu nodes=$node.children depth=$node.depth parent=$node}
              {/if}
            </li>
        {/foreach}
      </ul>
    {/if}
{/function}
<nav id="mainmenu" class="mainmenu">
    {menu nodes=$menu.children}
    <div class="clearfix"></div>
</nav>
