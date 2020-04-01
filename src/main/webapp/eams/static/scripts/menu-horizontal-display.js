
$(function(){
	// 默认全部属性隐藏
	$('.top-nav>li').bind("mouseover", function(){
		// 清除原有的左侧相对样式，默认右侧相对样式
		$(this).find("ul.second-ul").each(function(){
			$(this).addClass('second-ul-right');
			$(this).removeClass('second-ul-left');
		});
		$(this).find("ul.third-ul").each(function(){
			$(this).addClass('third-ul-right');
			$(this).removeClass('third-ul-left');
		});
		
		var totalWigth = $('.top-nav').width() ;
		var curLeft = $(this).offset().left;
		if ((!!totalWigth && !!curLeft) && (totalWigth + 25 - curLeft) < (200 + 200)){
			$(this).find("ul.second-ul").each(function(){
				$(this).removeClass('second-ul-right');
				$(this).addClass('second-ul-left');
			});
			$(this).find("ul.third-ul").each(function(){
				$(this).removeClass('third-ul-right');
				$(this).addClass('third-ul-left');
			});
		}
	});
});
