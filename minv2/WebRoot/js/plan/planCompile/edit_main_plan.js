var basePath=$("#basePath").val();

$(function() {
	$("input[name='copyBtn']").live("click", function() {
		//克隆按钮所在的tr并添加到table的末尾
		$(this).parents("table").find("tr").last().clone(true).appendTo($(this).parents("table"));

		//改变序号
		var $ltd = $(this).parents("table").find("tr").last().children('td');
		var num = parseInt($ltd.eq(2).html()) + 1;
		$ltd.eq(2).html(num);

		var plan_date = $(this).parent().parent().children().eq(0).text();
		var plan_date_html = "<input type='hidden' value='" + plan_date + "' name='plan_date'/>";
		var plan_week = $(this).parent().parent().children().eq(1).text();
		var plan_week_html = "<input type='hidden' value='" + plan_week + "' name='plan_week'/>";
		//日期和星期为空
		$ltd.eq(0).html(plan_date_html);
		$ltd.eq(1).html(plan_week_html);

		//找到table最后一个tr的最后一个td中的button按钮
		var $lastBtn = $(this).parents("table").find("tr").last().find("td").last().find("input[type='button']");
		//更改按钮的显示文字
		$lastBtn.val("删除");
		//修正按钮在复制时产生的样式错误
		$lastBtn.removeClass("button_hover");
		$lastBtn.addClass("button")
			//对该按钮重新监听点击事件
		$lastBtn.click(function(e) {
			//阻止默认行为，即复制行为
			e.stopPropagation();
			//将所在的行删除
			$(this).parents("tr").remove()
		})
	});
	init();
});

function init() {
	var myDate = new Date();
	var date = (myDate.getYear()+1900) + "-" + (myDate.getMonth() + 1) + "-" + myDate.getDate();
	$("#startTime").val(date);
}

//开始编制
function editInput() {
	var startTime = $("#startTime").val();
	var endTime = $("#endTime").val();
	if (startTime == "" || endTime == "") {
		top.Dialog.alert("请选择截止日期!");
	} else if (!compareDate(startTime, endTime)) {
		top.Dialog.alert("截止日期不能小于开始日期!");
	} else {
		$.post(basePath+"plan/ajaxExistJcMainPlanRecorder.action", {
			"startTime": startTime,
			"endTime": endTime
		}, function(data) {
			if(data.errCode == -1){
				top.Dialog.alert(data.retMsg,function(){
					window.location.href=basePath+"login.jsp";
				});
				return;
			}
			
			if (data.retMsg == "exist") {
				top.Dialog.alert("该日期范围内存在已经编制的计划!", function() {
					var diag = new top.Dialog();
					diag.Title = "计划详情信息";
					diag.URL = basePath+"plan/queryExistJcMainPlan.action?startTime=" + startTime + "&endTime=" + endTime;
					diag.Width = 1300;
					diag.Height = 600;
					diag.show();
				});
			} else {
				var dateArray = [];
				var s_date = strToDate(startTime);
				var e_date = strToDate(endTime);
				//是否过滤掉周末
				if ($("#isWeek").attr("checked")) {
					dateArray = getBetweenDateNoWeek(startTime, endTime);
				} else {
					dateArray = getBetweenDate(startTime, endTime);
				}
				var tableStr = getTableStr(dateArray);
				$("#scrollContent").html(tableStr);
				$("#editTable").show();
			}
		});
	}
}

//组成表格拼接的字符串
function getTableStr(dateArray) {
	var str = "";
	for (var i = 0; i < dateArray.length; i++) {
		str += "<table class='tableStyle'  useMultColor='true' useCheckBox='true'>";
		str += "<tr>";
		str += "<td width='9%' align='center'><input type='hidden' value='" + dateArray[i] + "' name='plan_date'/>" + dateArray[i] + "</td>";
		str += "<td width='9%' align='center'><input type='hidden' value='" + getWeekByDate(dateArray[i]) + "' name='plan_week'/>" + getWeekByDate(dateArray[i]) + "</td>";
		str += "<td width='5%'  align='center'>1</td>";
		str += "<td width='9%' align='center'><input type='text' style='width: 60px' name='jcType'/></td>";
		str += "<td width='9%' align='center'><input type='text' style='width: 60px' name='jcNum'/></td>";
		str += "<td width='9%' align='center'><input type='text' style='width: 60px' name='xcxc'/></td>";
		str += "<td width='9%' align='center'><input type='text' style='width: 60px' name='kilometre'/></td>";
		str += "<td width='9%' align='center'><input type='text' style='width: 60px' name='realKilometre'/></td>";
		str += "<td width='9%' align='center'><input type='text' style='width: 60px' name='kcArea'/></td>";
		str += "<td align='center'><input type='text' style='width: 120px' name='comments'/></td>";
		str += "<td width='8%' align='center'><input type='button' value='增加' name='copyBtn'/></td>";
		str += "</tr>";
		str += "</table>";
	}
	return str;
}

//保存计划
function savePlan() {
	if (existNull("jcType")) {
		top.Dialog.alert("机车类型不能为空!");
	} else if (existNull("jcNum")) {
		top.Dialog.alert("机车号不能为空!");
	} else if (existNull("xcxc")) {
		top.Dialog.alert("修程修次不能为空!");
	} else {
		var JSONObj = getJSONObject();
		
		$.ajax({
			type: "POST",
			url: basePath+"plan/ajaxSaveJcMainPlan.action",
			data: JSONObj,
			dataType: "json",
			success: function(data) {
				if (data.errCode == "0") {
					var mainPlanId = data.retMsg;
					top.Dialog.alert("计划编制成功!", function() {
						window.location.href = basePath+"plan/findMPRecorderByMainPlanId.action?mainPlanId=" + mainPlanId;
					});
				} else {
					top.Dialog.alert("计划编制失败!");
				}
			}
		});
	}
}

//封装JSON数组对象
function getJSONObject() {
	var dateArray = getArrayByName("plan_date");
	var weekArray = getArrayByName("plan_week");
	var jcTypeArray = getArrayByName("jcType");
	var jcNumArray = getArrayByName("jcNum");
	var xcxcArray = getArrayByName("xcxc");
	var kilometreArray = getArrayByName("kilometre");
	var realKilometreArray = getArrayByName("realKilometre");
	var kcAreaArray = getArrayByName("kcArea");
	var commentsArray = getArrayByName("comments");
	var startTime = $("#startTime").val();
	var endTime = $("#endTime").val();
	var plan_title = $("#plan_title").val();
	var objArray = [];
	var obj = null;
	var JSONObj = new Object();
	JSONObj.startTime = startTime;
	JSONObj.endTime = endTime;
	if (plan_title == "") {
		plan_title = startTime + "至" + endTime + "检修计划";
	}
	JSONObj.title = plan_title;
	for (var i = 0; i < dateArray.length; i++) {
		obj = new Object();
		obj.planDate = dateArray[i];
		obj.planWeek = weekArray[i];
		obj.jcTypeValue = jcTypeArray[i];
		obj.jcNumber = jcNumArray[i];
		obj.xcxc = xcxcArray[i];
		obj.planKilometre = kilometreArray[i];
		obj.realityKilometre = realKilometreArray[i];
		obj.kcArea = kcAreaArray[i];
		obj.remark = commentsArray[i];
		objArray.push(obj);
	}
	JSONObj.jsonStr = JSON.stringify(objArray);
	return JSONObj;
}

//根据相应的标签名称得到里面的值的集合数组
function getArrayByName(inputName) {
	var array = [];
	$("input[name='" + inputName + "']").each(function() {
		array.push($(this).val());
	});
	return array;
}

function existNull(inputName) {
	var array = [];
	var flag = false;
	$("input[name='" + inputName + "']").each(function() {
		if ($(this).val() != "") {
			array.push($(this).val());
		}
	});
	var len = $("input[name='" + inputName + "']").length;
	if (len != array.length) {
		flag = true;
	}
	return flag;
}

//excel导入
function uploadExcel() {
	var startTime = $("#startTime").val();
	var endTime = $("#endTime").val();
	var plan_title = $("#plan_title").val();
	if (plan_title == "") {
		plan_title = startTime + "至" + endTime + "检修计划";
	}
	if (startTime == "" || endTime == "") {
		top.Dialog.alert("请选择截止日期!");
	} else if (!compareDate(startTime, endTime)) {
		top.Dialog.alert("截止日期不能小于开始日期!");
	} else {
		var url = basePath+"plan/ajaxExistJcMainPlanRecorder.action";
		$.post(url, {
			"start_time": startTime,
			"end_time": endTime
		}, function(data) {
			if (data == "exit_plan") {
				top.Dialog.alert("该日期范围内存在已经编制的计划!", function() {
					var diag = new top.Dialog();
					diag.Title = "计划详情信息";
					diag.URL = basePath+"plan/queryExistJcMainPlan.action?startTime=" + startTime + "&endTime=" + endTime;
					diag.Width = 1300;
					diag.Height = 600;
					diag.show();
				});
			} else {
				var diag = new top.Dialog();
				diag.Title = "Excel文件导入";
				diag.URL = basePath+"plan/planCompile/alertDialog/upload_plan_excel.jsp?startTime=" + startTime + "&endTime=" + endTime + "&planTitle=" + plan_title;
				diag.Width = 400;
				diag.Height = 150;
				diag.show();
			}
		});
	}
}

//将字符串转换为日期
function strToDate(str) {
	var array = str.split("-");
	var date = new Date(array[0], parseInt(array[1], 10) - 1, array[2]);
	return date;
}

//判断两个日期之间相差多少天
function days_between(s_date, e_date) {
	var ONE_DAY = 1000 * 60 * 60 * 24;
	var date1_ms = s_date.getTime();
	var date2_ms = e_date.getTime();
	var difference_ms = Math.abs(date1_ms - date2_ms);
	return Math.round(difference_ms / ONE_DAY);
}

//获取两日期之间的所有日期
function getBetweenDate(startTime, endTime) {
	var s_date = strToDate(startTime);
	var e_date = strToDate(endTime);
	var days = days_between(s_date, e_date);
	var dateArray = [];
	for (var i = 0; i <= days; i++) {
		var temp = new Date(s_date.getYear()+1900, s_date.getMonth(), s_date.getDate() + i);
		temp = temp.getFullYear() + "-" + (temp.getMonth() + 1) + "-" + temp.getDate();
		dateArray.push(temp);
	}
	return dateArray;
}

//获取两日期之间的所有日期,过滤掉周末
function getBetweenDateNoWeek(startTime, endTime) {
	var s_date = strToDate(startTime);
	var e_date = strToDate(endTime);
	var days = days_between(s_date, e_date);
	var dateArray = [];
	for (var i = 0; i <= days; i++) {
		var temp = new Date(s_date.getYear()+1900, s_date.getMonth(), s_date.getDate() + i);
		if (temp.getDay() != 0 && temp.getDay() != 6) {
			temp = temp.getFullYear() + "-" + (temp.getMonth() + 1) + "-" + temp.getDate();
			dateArray.push(temp);
		}
	}
	return dateArray;
}

//根据日期获得星期几
function getWeekByDate(strDate) {
	var weekArray = ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
	var date = strToDate(strDate);
	return weekArray[date.getDay()];
}

//两日期进行比较
function compareDate(startTime, endTime) {
	var s_date = strToDate(startTime);
	var e_date = strToDate(endTime);
	return s_date <= e_date;
}