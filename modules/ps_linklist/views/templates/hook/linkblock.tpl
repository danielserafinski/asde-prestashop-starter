{foreach $linkBlocks as $linkBlock}
    <div class="ps_linklist footer-links">
        {assign var=_expand_id value=10|mt_rand:100000} 
        <h3 class="footer-links__title">
            <a href="#ps_linklist__list--{$_expand_id}" data-toggle="collapse" aria-expanded="true" aria-controls="ps_linklist__list--{$_expand_id}">{$linkBlock.title}</a>
        </h3>
        <ul id="ps_linklist__list--{$_expand_id}" class="footer-links__list collapse show">
        {foreach $linkBlock.links as $link}
          <li class="footer-links__item">
            <a
                id="{$link.id}-{$linkBlock.id}"
                class="footer-links__item-link footer-links__item-link--{$link.class}"
                href="{$link.url}"
                title="{$link.description}"
                {if !empty($link.target)} target="{$link.target}" {/if}
            >
              {$link.title}
            </a>
          </li>
        {/foreach}
        </ul>
    </div>
{/foreach}