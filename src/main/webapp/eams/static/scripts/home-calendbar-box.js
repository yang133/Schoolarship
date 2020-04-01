var Month_Map_En = {
	'1':'Jan',
	'2':'Feb',
	'3':'Mar',
	'4':'Apr',
	'5':'May',
	'6':'June',
	'7':'July',
	'8':'Aug',
	'9':'Sept',
	'10':'Oct',
	'11':'Nov',
	'12':'Dec',
};
	// 时间控件js
	
	var CalendarBox = Backbone.Model.extend({
		curDate : null,
		curYear : null,
		curMonth : null,
		curDay : null,
		curWeekDay : null,
		dynamicYear : null,
		dynamicMonth : null,
		initialize : function(){
			var myDate = new Date();
			this.curDate = myDate;
			this.curYear = myDate.getFullYear();
			this.curMonth = myDate.getMonth();
			this.curDay = myDate.getDate();
			this.curWeekDay = myDate.getDay();
			
			this.dynamicYear = myDate.getFullYear();
			this.dynamicMonth = myDate.getMonth();
		},
		initTable : function(){
			// 获取本月第一天
			var myDate = new Date();
			// 本月第一天
			myDate.setFullYear(this.dynamicYear, this.dynamicMonth, 1);
			// 本月第一天是周几
			var firstWeekday = myDate.getDay();
			
			var $calendarBoxTbody = $('.calendar-box .content table tbody');
			$calendarBoxTbody.empty();
			
			var html = "";
			for(var i = 0; i < 6; i++){ // 周
				html += "<tr>"
				for(var j = 0; j < 7 ; j++){ // 天
					var spanClass = "pre";
					if((myDate.getFullYear() == this.curYear) && (myDate.getMonth() == this.curMonth) && (myDate.getDate() == this.curDay)){
						spanClass = "today";
					} else if (myDate.getTime() > this.curDate.getTime()) {
						spanClass = "";
					} else if (myDate.getTime() < this.curDate.getTime()) {
						spanClass = "pre";
					} else {
					
					}
				
					if((myDate.getFullYear() > this.dynamicYear) || (myDate.getMonth() > this.dynamicMonth)){
						html += "<td><span class=''>&nbsp;&nbsp;&nbsp;</span></td>";
					} else{
						if(i == 0){
							if(j >= firstWeekday){
								html += "<td><span class='" + spanClass + "'> "+ myDate.getDate() + " </span></td>";
								myDate.setDate(myDate.getDate() + 1);
							} else {
								html += "<td><span class='pre'>&nbsp;&nbsp;&nbsp;</span></td>";
							}
						} else {
							html += "<td><span class='" + spanClass + "'> "+ myDate.getDate() + " </span></td>";
							myDate.setDate(myDate.getDate() + 1);
						}
					}
				}
				html += "</tr>";
				if((myDate.getFullYear() > this.dynamicYear) || (myDate.getMonth() > this.dynamicMonth)){
					break;
				}
			}
			$calendarBoxTbody.append(html);
			if(bg_lang == "zh"){
				$('.calendar-box .title-2 span').html(this.dynamicYear + " 年 "+ (this.dynamicMonth+1) + " 月");
			}else{
				var month = Month_Map_En[this.dynamicMonth+1];
				$('.calendar-box .title-2 span').html(month  + "  "+ this.dynamicYear);
			}
		}
	});
	var calendarBox = new CalendarBox();
	
	calendarBox.initTable();
	
	$(".calendar-box .title-2 a.pre-btn").on('click', function(){
		// 上一个月
		var myDate = new Date();
		myDate.setFullYear(calendarBox.dynamicYear, calendarBox.dynamicMonth, 1);
		// setMonth的时候，3月到2月，会有问题，所以才使用setDate
		myDate.setDate(myDate.getDate() - 1);
		calendarBox.dynamicYear = myDate.getFullYear();
		calendarBox.dynamicMonth = myDate.getMonth();
		
		calendarBox.initTable();
	});
	
	$(".calendar-box .title-2 a.next-btn").on('click', function(){
		// 下一个月
		var myDate = new Date();
		myDate.setFullYear(calendarBox.dynamicYear, calendarBox.dynamicMonth);
		myDate.setMonth(myDate.getMonth() + 1);
		calendarBox.dynamicYear = myDate.getFullYear();
		calendarBox.dynamicMonth = myDate.getMonth();
		
		calendarBox.initTable();
	});
