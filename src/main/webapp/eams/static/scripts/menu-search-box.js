
$(function(){
	$('.top-menu-search .search-box button').on('click',function(){
		// 默认隐藏无结果项
		$('.top-menu-search .search-box .down-box ul:last li').css('display','none');
		// 查询条件
		var searchStr = $.trim($('.top-menu-search .search-box input[type=text]').val());
		if(!!searchStr){
			// 显示结果
			$('.top-menu-search .search-box .down-box').css('display','');
			// 菜单总数
			var k = $('.top-menu-search .search-box .down-box ul:first li').size();
			// 结果数
			var j = 0;
			$('.top-menu-search .search-box .down-box ul:first li').each(function(i){
				// 默认隐藏当前菜单
				$(this).css('display','none');
				// 获取菜单名称
				var titleStr = $.trim($(this).find('a').attr('oriName'));
				if(!!titleStr && titleStr.length>0 && titleStr.indexOf(searchStr) != -1){
					// 改造显示项
					var titleShowStr = titleStr.replace(searchStr,"{{{0}}}").replace("{{{0}}}","<span style='color:red;text-decoration:underline;'>"+searchStr+"</span>");
					$(this).find('a').html(titleShowStr)
					// 显示当前结果项
					$(this).css('display','');
					j++;
				}
				// 当循环结束时，结果数仍然为0，显示无查询结果项。
				if(i==(k-1) && j==0){
					$('.top-menu-search .search-box .down-box ul:last li').css('display','');
				}
			});
			
		}
	});
	$('.top-menu-search .search-box input[type=text]').on('keydown', function(e){
		var theEvent = window.event || e;
		var code = theEvent.keyCode || theEvent.which || theEvent.charCode;
		if (code == 13) {
			$('.top-menu-search .search-box button').trigger('click');
		}
	});
	$('.top-menu-search .search-box .down-box').mouseleave(function(){
		$('.top-menu-search .search-box .down-box').css('display','none');
	});
	var menuSearchBoxThreshold = 600;
	$('.top-menu-search .search-box input[type=text]').bind("keyup", function() {
		lastKeyUpTime = new Date().getTime();
		setTimeout(function() {
			var currentKeyUpTime = new Date().getTime();
			if (currentKeyUpTime - lastKeyUpTime > menuSearchBoxThreshold) {
				$('.top-menu-search .search-box button').trigger('click');
			}
		}, menuSearchBoxThreshold + 100);
	});
});
