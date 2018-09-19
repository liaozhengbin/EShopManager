$("[rel=tooltip]").tooltip();


//从图书查询页移出移入到回收站
function deleteClick(book_id) {
	if (confirm("你确定要移入商品回收站吗？")) {
		show_loading();
		//ajax请求servlet
		var url = GetServerUrl("books/insertrecycle/"+book_id);

		$.post(url, {book_id:book_id}, function(response) {
			if (response == 1) {
				show_msg('操作成功', "query");
			} else {
				show_err_msg('操作失败');
			}

		});
	}
}





//从回收站删除  也意味着彻底删除该图书
function deleteRecycleClick(book_id) {
	if (confirm("你确定要彻底删除该图书吗？")) {
		show_loading();
		//ajax请求servlet
		var url = GetServerUrl("books/deleterecycle/"+book_id);

		$.post(url, {book_id:book_id}, function(response) {
			if (response == 1) {
				show_msg('操作成功', "selectrecycle");
			} else {
				show_err_msg('操作失败');
			}

		});
	}
}

//删除分类管理
function deleteTypeClick(type_id) {
	if (confirm("你确定要删除该分类吗？")) {
		show_loading();
		//ajax请求servlet
		var url = GetServerUrl("type/deleteType/"+type_id);

		$.post(url, {type_id:type_id}, function(response) {
			if (response == 1) {
				show_msg('操作成功', "selectrecycle");
			} else {
				show_err_msg('操作失败');
			}

		});
	}
}

//删除单条公告板数据
function deletesalesClick(book_id) {
	if (confirm("你确定要删除该条数据吗？")) {
		show_loading();
		//ajax请求servlet
		var url = GetServerUrl("sales/deletesales/"+book_id);

		$.post(url, {book_id:book_id}, function(response) {
			if (response == 1) {
				show_msg('操作成功', "selectAllSales");
			} else {
				show_err_msg('操作失败');
			}

		});
	}
}

	function updateIsNew(book_id, isNew) {
		show_loading();
		//ajax请求servlet
		var url = GetServerUrl("books/updatenew/"+isNew+"/"+book_id);
		var data = {
			bookId : book_id,
			isNew : isNew
		};

		$.post(url, data, function(response) {
			if (response == 1) {
				show_msg('操作成功', "query");
			} else {
				show_err_msg('操作失败');
			}
		});
	}

	function updateIsOnline(book_id, status) {

		show_loading();
		//ajax请求servlet
		var url = GetServerUrl("books/updateonline/"+book_id+"/"+status);
		var data = {
			bookId : book_id,
			status : status
		};

		$.post(url, data, function(response) {
			if (response == 1) {
				show_msg('操作成功', "query");
			} else {
				show_err_msg('操作失败');
			}

		});

	}

	function updateIsHot(book_id, isHot) {
		show_loading();
		//ajax请求servlet
		var url = GetServerUrl("books/updateIsHot/"+isHot+"/"+book_id);
		var data = {
			bookId : book_id,
			isHot : isHot
		};
		$.post(url, data, function(response) {
			console.log("response is "+response);
			if (response == 1) {
				show_msg('操作成功', "query");
			} else {
				show_err_msg('操作失败');
			}

		});

	}





$(function() {
	$('.demo-cancel-click').click(function() {
		return false;
	});

	$("#btnUpdate").click(function() {
		var control = $("select[name='control']").val();
		if (control == '') {
			show_err_msg("请选择您要的操作");
		} else {

			var ckValArray = [];
			$("input[name='ck']:checked").each(function() {
				ckValArray.push($(this).val());
			});

			if (ckValArray.length == 0) {
				show_err_msg("请选择编号");
			} else {
				show_loading();

				var bookIds = ckValArray.join(",");
				var url = GetServerUrl("books/updatestatus.action");
				var data = {
					control : control,
					bookIds : bookIds
				};

				$.post(url, data, function(response) {
					var jsonData = $.parseJSON(response);
					var result = jsonData.status;

					var responseUrl = GetServerUrl("books/query.action");
					if (result == 200) {
						show_msg('操作成功', responseUrl);
					} else {
						show_err_msg('操作失败');
					}

				});

			}

		}
	});

});


function selectAlltype(EShopURL){
	
	//获取到一级分类
	$.post(EShopURL+"/type/selectAllType",null,function(res){
			var jsonObj=$.parseJSON(res);
			console.log(res);
			var str="<option value=''>--请选择分类-</option>";
			for(var i=0;i<res.length;i++){
				var obj=res[i];
				str+="<option value='"+obj.typeId+"'>"+obj.typeName+"</option>";
			}
			$("#DropDownTimezone1").html(str);
	});
	
	//获取到二级分类
	//解析取到的“市集合”
	$("#DropDownTimezone1").change(function(res){
		console.log("第二个res is "+res);
		var param={typeId:this.value};
		$.post(EShopURL+"/type/selectAllTypeSon.do",param,function(res){
				var str="<option value=''>--请选择子分类--</option>";
				for(var i=0;i<res.length;i++){
					var obj=res[i];
					str+="<option value='"+obj.typeId+"'>"+obj.typeName+"</option>";
				}
				$("#DropDownTimezone2").html(str);
			

		});
		
	});
	
}
