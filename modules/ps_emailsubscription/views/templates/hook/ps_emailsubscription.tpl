<div class="ps_emailsubscription">
    <h4 class="ps_emailsubscription__title">{l s='Newsletter' d='Modules.Emailsubscription.Shop'}</h4>
    {if $conditions}
        <p class="ps_emailsubscription__conditions">{$conditions}</p>
    {/if}  
    {if $msg}
        <p class="ps_emailsubscription__notification ps_emailsubscription__notification{if $nw_error}--error{else}--success{/if}" role="alert">{$msg}</p>
    {/if}
    <form action="{$urls.pages.index}" method="post">
        <div class="ps_emailsubscription__form input-button">
            <input id="ps_emailsubscription" class="input-button__input" type="text" name="email" value="{$value}" placeholder="{l s='Your e-mail' d='Modules.Emailsubscription.Shop'}" />
            <span class="input-button__group-button">
                <button type="submit" name="submitNewsletter" class="input-button__button" ><i class="input-button__icon--newsletter"></i><span class="input-button__desc">{l s='Your e-mail' d='Modules.Emailsubscription.Shop'}</span></button>
            </span>
        </div>    
        <input type="hidden" name="action" value="0" />
    </form>
</div>
