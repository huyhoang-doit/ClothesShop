(function($) {
    "use strict";
    
    /*----------------------------
       stickey menu
    ----------------------------*/
    $(window).on('scroll',function() {    
           var scroll = $(window).scrollTop();
           if (scroll < 100) {
            $(".sticky-header").removeClass("sticky");
           }else{
            $(".sticky-header").addClass("sticky");
           }
    });

    /*----------------------------
    jQuery MeanMenu
    ------------------------------ */
    $('.mobile-menu nav').meanmenu({
        meanScreenWidth: "9901",
        meanMenuContainer: ".mobile-menu",
        onePage: true,
    });
    
    
      /*--------------------------
     ScrollUp
    ---------------------------- */
    $.scrollUp({
        scrollText: '<i class="fa fa-angle-double-up"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    });
	

    /* slider activation */
    $('.slider_active').owlCarousel({
        animateOut: 'fadeOut',
		loop: true,
        nav: false,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 1,
        dots:true,
        responsiveClass:true,
	});
    
    
    /* product activation */
    $('.product_active').owlCarousel({
        animateOut: 'fadeOut',
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 3,
        dots:true,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
        responsiveClass:true,
		responsive:{
			0:{
				items:1,
			},
            576:{
				items:2,
			},
            1200:{
				items:3,
			},

		  }
    });
    
     /* brand activation */
    $('.brand_active').owlCarousel({
        animateOut: 'fadeOut',
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 6,
        dots:true,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
        responsiveClass:true,
		responsive:{
			0:{
				items:1,
			},
            480:{
				items:3,
			},
            992:{
				items:4,
			},
            1200:{
				items:6,
			},

		  }
    });
    

      /* single_p activation */
    $('.single_p_active').owlCarousel({
        animateOut: 'fadeOut',
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 4,
        dots:true,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
        responsiveClass:true,
		responsive:{
			0:{
				items:1,
			},
            576:{
				items:2,
			},
            992:{
				items:3,
			},
            1200:{
				items:4,
			},

		  }
    });
    
      /* blog activation */
    $('.blog_active').owlCarousel({
        animateOut: 'fadeOut',
		loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 8000,
        items: 1,
        dots:true,
        navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
    
    });
    
    
    
    /*wow activation*/
    new WOW().init();
    

  
    

    /*------addClass/removeClass-------*/
   $(".languages a,.currency a").on("click", function() {
        $(this).removeAttr('href');
        $(this).toggleClass('open').next('.dropdown_languages,.dropdown_currency').toggleClass('open');
        $(this).parents().siblings().find('.dropdown_languages,.dropdown_currency').removeClass('open');
    });

    $('body').on('click', function (e) {
        var target = e.target;
        if (!$(target).is('.languages a,.currency a') ) {
            $('.dropdown_languages,.dropdown_currency').removeClass('open');
        }
    });
    
    
    /*mini cart slideToggle*/
    
    $(".shopping_cart").on("click", function() {
            $('.mini_cart').slideToggle('medium');
    }); 
    
    
    
    
    
    // Header Custom dropdowns
        $("header .dropdown-toggle").on("click", function() {
            $(this).toggleClass('open').next('.dropdown-menu').toggleClass('open');
            $(this).parents().siblings().find('.dropdown-menu').removeClass('open');
        });

        // Closing the dropdown by clicking in the menu button or anywhere in the screen
        $('body').on('click', function (e) {
            var target = e.target;
            if (!$(target).is('.dropdown-toggle') && !$(target).parents().is('.dropdown-toggle')) {
                $('.dropdown-toggle, .dropdown-menu').removeClass('open');
            }
        });

    
    
    

    
     /*------------------------------
      Category menu Activation
    ------------------------------*/
    $('.sidebar_widget.catrgorie > ul > li > a').on('click', function(){
       $(this).removeAttr('href');
       var element = $(this).parent('li');
        if (element.hasClass('open')) {

           element.removeClass('open');

           element.find('li').removeClass('open');

           element.find('ul').slideUp();
       }
          else {
            element.addClass('open');
            element.children('ul').slideDown();
            element.siblings('li').children('ul').slideUp();
            element.siblings('li').removeClass('open');
            element.siblings('li').find('li').removeClass('open');
            element.siblings('li').find('ul').slideUp();
          }
         });
         $('.has-sub > a').append('<span class="holder"></span>');
    
    
    
    
    
         /*----------------------------
    	slider-range here
    ------------------------------ */
    $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 500,
      values: [ 0, 500 ],
      slide: function( event, ui ) {
        $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
      }
    });
    $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
      " - $" + $( "#slider-range" ).slider( "values", 1 ) );
    
    
	
	
    /*niceSelect*/
     $('select').niceSelect();
    


    
    
    
    /*magnificPopup activation*/
    
    $('.large_view,.port_popup').magnificPopup({
      type: 'image',
        gallery:{
        enabled:true,
      }
    });
    
     $('.video_popup').magnificPopup({
      type: 'iframe',
    });
    
    

    
    /*counterup activation*/
    $('.counter_number').counterUp({
        delay: 10,
        time: 1000
    });
    
    
    
     $('.portfolio_gallery').imagesLoaded( function() {
        // init Isotope
        var $grid = $('.portfolio_gallery').isotope({
           itemSelector: '.gird_item',
            percentPosition: true,
            masonry: {
                columnWidth: '.gird_item'
            }
        });
            
        // filter items on button click
        $('.portfolio_button').on( 'click', 'button', function() {
          var filterValue = $(this).attr('data-filter');
          $grid.isotope({ filter: filterValue });
            
           $(this).siblings('.active').removeClass('active');
           $(this).addClass('active');
        });
    });
    
    


})(jQuery);