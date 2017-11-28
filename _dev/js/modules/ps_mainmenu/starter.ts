/***

Menu: 
- menu o data-depth="0" jest widoczne
- po kliknieciu w ikonkę wysuwa sie podmenu
- 

***/

$( ".js-ps_mainmenu__item-icon" ).on( "click", function() {
    console.log( $( this ).data( "submenu" ) );
    
    let submenu = $( '.ps_mainmenu__list[data-submenu="'+$( this ).data( "submenu" )+'"]');
    if(submenu.hasClass("js-ps_mainmenu__list-move--hide"))
    {
        submenu.removeClass("js-ps_mainmenu__list-move--hide");
    }
    submenu.addClass("js-ps_mainmenu__list-move js-ps_mainmenu__list-move--show");
});

$( ".js-ps_mainmenu__list-close" ).on( "click", function() {
    console.log( $( this ).data( "submenu" ) );
    
    let submenu = $( '.ps_mainmenu__list[data-submenu="'+$( this ).data( "submenu" )+'"]');
    if(submenu.hasClass("js-ps_mainmenu__list-move--show"))
    {
        submenu.removeClass("js-ps_mainmenu__list-move--show");
    }
    submenu.addClass("js-ps_mainmenu__list-move js-ps_mainmenu__list-move--hide");    
});

$( ".js-ps_mainmenu__action" ).on( "click", function() {
    console.log( $( this ).data( "menu" ) );
    let menu = $( '.ps_mainmenu__'+$( this ).data( "menu" ));
    $( '.js-ps_mainmenu').each(function(){
        if($( this ).hasClass("js-ps_mainmenu__list-move--show")){
            $( this ).removeClass("js-ps_mainmenu__list-move--show");
            $( this ).addClass("js-ps_mainmenu__list-move--hide");
        }
    });
    menu.removeClass("js-ps_mainmenu__list-move--hide");
    menu.addClass("js-ps_mainmenu__list-move--show"); 
    
//    $("body").find( '.js-ps_mainmenu').toggleClass( "js-ps_mainmenu__list-move--show js-ps_mainmenu__list-move--hide" );
    
//    if(menu.hasClass("js-ps_mainmenu__list-move--show")){
//        menu.removeClass("js-ps_mainmenu__list-move--show");
//        menu.addClass("js-ps_mainmenu__list-move--hide");
//    }
//    else{
//        menu.removeClass("js-ps_mainmenu__list-move--hide");
//        menu.addClass("js-ps_mainmenu__list-move--show");        
//    }
});