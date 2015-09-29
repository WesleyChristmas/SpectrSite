/*====================================================
  TABLE OF CONTENT
  1. function declearetion
  2. Initialization
====================================================*/

/*===========================
 1. function declearetion
 ==========================*/
var themeApp = {
	featuredMedia: function(){
		$(".post-wrap").each(function() {
			var thiseliment = $(this);
			var media_wrapper = $(this).find('featured');
			var media_content_embeded = media_wrapper.find('iframe');
			if (media_content_embeded.length > 0) {
				$(media_content_embeded).prependTo(thiseliment).wrap("<div class='featured-media'></div>");
				thiseliment.addClass('post-type-embeded');
			}
		});
	},
	responsiveIframe: function() {
		$('.post').fitVids();
	},
	masonryLayout: function() {
		$container = $('.item-container');
    	$items = $('.item');
    	var $msnry = $container.masonry({
			itemSelector: '.item',
			columnWidth: '.item',
			isAnimated: true,
			transitionDuration: 0
	    });
	    $items.hide();
	    $container.imagesLoaded(function() {
			$items.addClass('animate').show();
			$msnry.masonry();
	    });
		// $('.item-container').masonry({
		// 	// options
		// 	itemSelector: '.item',
		// 	// columnWidth: 200
		// });
	},
	navBar: function() {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 40) {
				$('.navbar-wrap').addClass('shrink');
			} else {
				$('.navbar-wrap').removeClass('shrink');
			}
		});
	},
	searchForm: function() {
		$('.search-open').on('click', function(e){
			e.preventDefault();
			$('.search-wrap').addClass('visible');
			$(this).addClass('hide-this');
			$('.navbar-toggle').addClass('hide-this');
			$('#search-result').show(300);
		});
		$('.search-close').on('click', function(e){
			e.preventDefault();
			$('.search-wrap').removeClass('visible');
			$('.search-open').removeClass('hide-this');
			$('.navbar-toggle').removeClass('hide-this');
			$('#search-result').hide(300);
		});
		/*$("#search-field").ghostHunter({
		    results         : "#search-result",
		    onKeyUp         : true,
		    zeroResultsInfo     : false,
		    info_template   : "<div class=\"search-info\">{{amount}} posts found</div>",
		    result_template : "<div><a href='{{link}}'>{{title}}</a></div>"
		});*/
	},
	highlighter: function() {
		$('pre code').each(function(i, block) {
		    hljs.highlightBlock(block);
		});
	},
	PreventClick: function() {
		$('.share-text').on('click', function(e){
			e.preventDefault();
		})
	},
	shareCount: function() {
		$('.post-wrap').each(function() {
			var $this = $(this);
			var url = $(this).find('.post-url').html();
			var placeHolder = $this.find('.share-count');

			/*$.getJSON( 'http://graph.facebook.com/?id=' + url, function( fbdata ) {
		        fbc = fbdata.shares;
		        $(placeHolder).attr('data-fbc', fbc);
		        
		    });
		    $.getJSON( 'http://cdn.api.twitter.com/1/urls/count.json?url=' + url + '&callback=?', function( twitdata ) {
		        twc = twitdata.count;
		       $(placeHolder).attr('data-twc', twc);
		    });
		    $.getJSON( 'http://api.pinterest.com/v1/urls/count.json?url=' + url + '&callback=?', function( pindata ) {
		        pinc = pindata.count;
		        $(placeHolder).attr('data-pinc', pinc);
		    });*/

		    function checkJSON_getSum() {
		    	if($(placeHolder).attr('data-fbc') != undefined && $(placeHolder).attr('data-twc') != undefined && $(placeHolder).attr('data-pinc') != undefined) {
			    	var fbc = parseInt($(placeHolder).attr('data-fbc'));
			    	var twc = parseInt($(placeHolder).attr('data-twc'));
			    	var pinc = parseInt($(placeHolder).attr('data-pinc'));
			    	var totalShare = fbc + twc + pinc;
				    $this.find('.share-count').html(totalShare);
				    //console.log(totalShare);
			    }
			    else {
			        setTimeout(function () {
			                checkJSON_getSum();
			        }, 200);
			    }
			}
			checkJSON_getSum();
		});
	},
	backToTop: function() {
		$(window).scroll(function(){
			if ($(this).scrollTop() > 100) {
				$('#back-to-top').fadeIn();
			} else {
				$('#back-to-top').fadeOut();
			}
		});
		$('#back-to-top').on('click', function(e){
			e.preventDefault();
			$('html, body').animate({scrollTop : 0},1000);
			return false;
		});
	},
	/*tagcloud:function(){
		var FEED_URL = "/rss/";
		var primary_array = [];
		$.get(FEED_URL, function (data) {
			$(data).find("category").each(function () {
				var el = $(this).text();
				if ($.inArray(el, primary_array) == -1) {
					primary_array.push(el);
				}
			});
			var formated_tag_list = "";
			for ( var i = 0; i < primary_array.length; i = i + 1 ) {
				var tag = primary_array[ i ];
				var tagLink = tag.toLowerCase().replace(/ /g, '-');
				formated_tag_list += ("<a href=\"/tag/" + tagLink + "\">" + tag + "</a>");
			}
			$('.tag-cloud').append(formated_tag_list);
		});
	},*/
	/*recentPost:function() {
		var feed_url = "/rss/";
		var code = String('');
		$.get(feed_url, function(data) {
			$(data).find('item').slice(0,recent_post_count).each(function(){
				var link = $(this).find('link').text();
				var title = $(this).find('title').text();
				var published_date = $(this).find('pubDate').text();
				function format_date (dt) {
					var d = new Date(dt);
					var month_name = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
					var month = month_name[d.getMonth()];
					var date = d.getDate();
					var year = d.getFullYear();
					var formatted_dt = month+' '+date+','+' '+year;
					return formatted_dt;
				}
				code += '<div class="recent-single-post">';
				code += '<a href="' + link + '" class="post-title">' + title + '</a><div class="date">' + format_date(published_date) + '</div>';
				code += '</div>';
			})
			$(".recent-post").html(code);
		});
	},
	mailchimp:function() {
		var form = $('#mc-embedded-subscribe-form');
		form.attr("action", mailchimp_form_url);
		var message = $('#message');
		var submit_button = $('mc-embedded-subscribe');
		function IsEmail(email) {
			var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			return regex.test(email);
		}
		form.submit(function(e){
			e.preventDefault();
			$('#mc-embedded-subscribe').attr('disabled','disabled');
			if($('#mce-EMAIL').val() != '' && IsEmail($('#mce-EMAIL').val())) {
				message.html('please wait...').fadeIn(1000);
				var url=form.attr('action');
				if(url=='' || url=='YOUR_MAILCHIMP_WEB_FORM_URL_HERE') {
					alert('Please config your mailchimp form url for this widget');
					return false;
				}
				else{
					url=url.replace('?u=', '/post-json?u=').concat('&c=?');
					console.log(url);
					var data = {};
					var dataArray = form.serializeArray();
					$.each(dataArray, function (index, item) {
					data[item.name] = item.value;
					});
					$.ajax({
						url: url,
						type: "POST",
						data: data,
						dataType: 'json',
						success: function(response, text){
							if (response.result === 'success') {
								message.html(success_message).delay(10000).fadeOut(500);
								$('#mc-embedded-subscribe').removeAttr('disabled');
								$('#mce-EMAIL').val('');
							}
							else{
								message.html(response.result+ ": " + response.msg).delay(10000).fadeOut(500);
								console.log(response);
								$('#mc-embedded-subscribe').removeAttr('disabled');
								$('#mce-EMAIL').focus().select();
							}
						},
						dataType: 'jsonp',
						error: function (response, text) {
							console.log('mailchimp ajax submit error: ' + text);
							$('#mc-embedded-subscribe').removeAttr('disabled');
							$('#mce-EMAIL').focus().select();
						}
					});
					return false;
				}
			}
			else {
				message.html('Please provide valid email').fadeIn(1000);
				$('#mc-embedded-subscribe').removeAttr('disabled');
				$('#mce-EMAIL').focus().select();
			}            
		});
	},
	facebook:function() {
		var fb_page = '<iframe src="//www.facebook.com/plugins/likebox.php?href='+facebook_page_url+'&amp;width&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:258px; width:100%;" allowTransparency="true"></iframe>';
		$('.fb').append(fb_page);
		$(".fb").fitVids();
	},
	twitter: function() {
		var twitter_block = '<a class="twitter-timeline" href="'+twitter_url+'" data-widget-id="'+twitter_widget_id+'" data-link-color="#0062CC" data-chrome="nofooter noscrollbar" data-tweet-limit="'+number_of_tweet+'">Tweets</a>';
		twitter_block += "<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\"://platform.twitter.com/widgets.js\";fjs.parentNode.insertBefore(js,fjs);}}(document,\"script\",\"twitter-wjs\");</script>";
		$('.twitter').append(twitter_block);
	},
	hideEmptyNav: function() {
		if ($('.main-navigation').find('li').length == 0 ) {
			$('.main-navigation').hide();
		}
	},*/
	init:function(){
		themeApp.featuredMedia();
		themeApp.responsiveIframe();
		themeApp.masonryLayout();
		themeApp.navBar();
		themeApp.searchForm();
		themeApp.highlighter();
		themeApp.PreventClick();
		themeApp.shareCount();
		// themeApp.backToTop();
		//themeApp.tagcloud();
		//themeApp.recentPost();
		//themeApp.mailchimp();
		//themeApp.facebook();
		//themeApp.twitter();
		// themeApp.hideEmptyNav();
	}
}
/*===========================
2. Initialization
==========================*/
$(document).ready(function(){
    var page = location.href.substring(location.href.lastIndexOf('/')+1,location.href.indexOf('.')),
        l = $('.navbar-nav').find('li').length;
    
    $('.navbar-nav').find('li').removeClass('current-menu-item');
    for(var i=0;i<l;++i){
        if($('.navbar-nav').find('li').eq(i).data('item') == page){
            $('.navbar-nav').find('li').eq(i).addClass('current-menu-item');
        }
    }
    

	themeApp.init();
    $('.navbar-nav').find('li').on('click',function(){
    });
    
    $('.features, .sub-nav').mouseover(function() {
        $( ".sub-nav" ).toggleClass("sub-nav-visible");
    });
    $('.features ul').mouseout(function() {
        $( ".sub-nav, .sub-nav" ).toggleClass("sub-nav-visible");
    });
        $('.features').mouseout(function() {
        $( ".sub-nav, .sub-nav" ).toggleClass("sub-nav-visible");
    });
});