﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>青岛智能产业技术研究院——研究院动态</title>

<link href="Resources/css/bootstrap-cerulean.min.css" rel="stylesheet" />
<link href="Resources/css/charisma-app.css" rel="stylesheet" />
<link href="Resources/css/fileinput.css" rel="stylesheet" />
<link href="Resources/css/mstyle.css" rel="stylesheet" />

<script type="text/javascript" src="Resources/js/jQuery-1.11.0.js"></script>
<script type="text/javascript" src="Resources/js/fileinput.js"></script>
<script type="text/javascript" src="Resources/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="Resources/js/bootstrap-paginator.js"></script>
<script type="text/javascript" src="Resources/js/bootstrap.js"></script>
<script type="text/javascript" src="Resources/js/pages.js"></script>
<script type="text/javascript" src="Resources/js/common.js"></script>
<script type="text/javascript" src="Resources/js/WdatePicker.js"></script>

<script type="text/javascript">
	//当前页数
	var pageno = 1;

	//每页加载记录数量
	var pagerow = 20;

	//数据记录数
	var rowcount;
	//新闻类型
	var ProjectCategory = "1";
	var UserID = "";
	$(document).ready(function() {
		$("#UserID").val(sessionStorage.getItem("AccountID"));
		UserID = sessionStorage.getItem("AccountID");

		$("#LinkAddress").fileinput({
			'showPreview' : false,
			'showUpload' : false,
			'allowedFileExtensions' : [ 'html' ],
			'elErrorContainer' : '#errorlink'
		});
		$("#LinkAddress").on('fileselect', function(event, numFiles, label) {
			parent.$("#editlink").hide();
		});
		$("#picturesList").fileinput({
			'showPreview' : false,
			'showUpload' : false,
			'allowedFileExtensions' : [ 'jpg', 'png','jpeg' , 'gif' ],
			'elErrorContainer' : '#errorimg'
		});
		$("#picturesList").on('fileselect', function(event, numFiles, label) {
			parent.$("#editpic").hide();
		});

	});

	$(function() {
		LoadData();
		$("#btnClose").click(function() {
			Close();
		});
		$("#btnSave").click(function() {
			Save();
		});

		$("#btnAdd").click(function(e) {
			e.preventDefault();
			ClearUI();
		});
		$("#btnEdit").click(function() {
			if ($("#hiddenID").val().trim() == "") {
				alert("请选择操作对象。");
				return false;
			}
			$("#btnEdit").attr("data-target", "#myModal");//添加时需要去掉该值，否则也能打开
			openDetail($("#hiddenID").val()); //打开编辑操作
		});

		$("#btnmodalclose").click(function() {
			Close();
		});

	});

	function LoadData() {
		$.post("LoadProjectList.do", {
			pageno : pageno, // 当前页码，初始化时为1
			pagerow : pagerow,
			ProjectCategory : ProjectCategory
		// 每页显示记录数
		}, function(data) {
			//alert(JSON.stringify(data));
			if (data != null) {
				$("#datatb").html("");
				rowcount = data.rows;
				var list = data.list;
				var ht = "";
				for (var i = 0; i < list.length; i++) {
					ht = ht
							+ "<tr  id='tr"
							+ i
							+ "' onclick='SelectNews(this.id,"
							+ list[i].ProjectID
							+ ")'>"
							+ "<td style='text-align:center;'>"
							+ (list[i].PublicDate == null ? "" : (ymdDate(
									list[i].PublicDate, 'yyyy-MM-dd')))
							+ "</td>"
							+ "<td style='text-align:center;'>"
							+ (list[i].ProjectTitle == null ? ""
									: list[i].ProjectTitle)
							+ "</td>"
							+ "<td style='text-align:center;'>"
							+ (list[i].LinkAddress == null ? ""
									: list[i].LinkAddress) + "</td>" + "</tr>";
				}
				$("#datatb").append(ht);
				pages(data.rows, pagerow, pageno);
				parent.miFrameHeight();
			}
		});
	}
	function GetChangePageData(pageno) {
		$.post("LoadProjectList.do", {
			pageno : pageno, // 当前页码，初始化时为1
			pagerow : pagerow,
			ProjectCategory : ProjectCategory
		// 每页显示记录数
		}, function(data) {
			if (data != null) {
				$("#datatb").html('');
				rowcount = data.rows;
				var list = data.list;
				var ht = "";
				for (var i = 0; i < list.length; i++) {
					ht = ht
							+ "<tr  id='tr"
							+ i
							+ "' onclick='SelectNews(this.id,"
							+ list[i].ProjectID
							+ ")'>"
							+ "<td style='text-align:center;'>"
							+ (list[i].PublicDate == null ? "" : (ymdDate(
									list[i].PublicDate, 'yyyy-MM-dd')))
							+ "</td>"
							+ "<td style='text-align:center;'>"
							+ (list[i].ProjectTitle == null ? ""
									: list[i].ProjectTitle)
							+ "</td>"
							+ "<td style='text-align:center;'>"
							+ (list[i].LinkAddress == null ? ""
									: list[i].LinkAddress) + "</td>" + "</tr>";
				}
				$("#datatb").append(ht);
				pages(data.rows, pagerow, pageno);
				parent.miFrameHeight();
			}
		});
	}

	function SelectNews(trid, objid) {
		$("#datatb tr").each(function() {
			if ($(this).attr("id") == trid) {
				$("#" + trid).css("background-color", "#e7e8ec");
				$("#" + trid).css("color", "#4289f1");
			} else {
				$(this).css("background-color", "");
				$(this).css("color", "");
			}
		});

		$("#hiddenID").val(objid);
	}

	function ClearNews() {
		$("#datatb tr").each(function() {
			$(this).css("background-color", "");
			$(this).css("color", "");
		});
	}

	function ClearUI() {
		$("#hiddenID").val("");
		$("#PublicDate").val("");
		$("#ProjectTitle").val("");

		$("#editlink").val("");
		$("#LinkAddress").fileinput('clear');
		$("#editpic").val("");
		$("#picturesList").fileinput('clear');
	}

	function CheckUI() {

		if (parent.$("#PublicDate").val().trim() == "") {
			alert("请填写发布日期。");
			parent.$("#PublicDate").focus();
			return false;
		}

		if (parent.$("#ProjectTitle").val().trim() == "") {
			alert("请填写标题。");
			parent.$("#ProjectTitle").focus();
			return false;
		}

		if (parent.$("#editlink").val().trim() == ""
				&& parent.$("#LinkAddress").val().trim() == "") {
			alert("请选择内容页。");
			parent.$("#LinkAddress").focus();
			return false;
		}
		return true;
	}

	function Save() {
		if (!CheckUI())
			return;
		if (parent.$("#hiddenID").val() == "") {
			var ajax_option = {
				url : "AddProject.do",
				success : function(data) {
					//alert(JSON.stringify(data));
					var flg = false;
					switch (data.fail_code) {
					case "M01U004E001":
						alert("用户登录失效，请重新登录。");
						parent.window.open("login.do", "_self");
						break;
					case -1:
						flg = true;
						break;
					}
					if (data.exec_code == 1 && flg) {
						alert("保存成功。");
						parent.$("#btnmodalclose").click();
						ClearUI();
						LoadData();
					}
				}
			};
			parent.$("#editform").ajaxSubmit(ajax_option);
		} else {
			//修改
			var ajax_option = {
				url : "EditProject.do",
				success : function(data) {
					//alert(JSON.stringify(data));
					var flg = false;
					switch (data.fail_code) {
					case "M01U004E001":
						alert("用户登录失效，请重新登录。");
						parent.window.open("login.do", "_self");
						break;
					case -1:
						flg = true;
						break;
					}
					if (data.exec_code == 1 && flg) {
						alert("保存成功。");
						parent.$("#btnmodalclose").click();
						ClearUI();
						LoadData();
					}
				}
			};
			parent.$("#editform").ajaxSubmit(ajax_option);

			$("#btnEdit").attr("data-target", "");
		}
	}

	function Close() {
		parent.$("#btnmodalclose").click();
		ClearUI();
		ClearNews();
		$("#hiddenID").val("");
	}

	function Del() {
		if ($("#hiddenID").val() == "") {
			alert("请选择操作对象。");
			return false;
		}
		if (window.confirm("删除是不可恢复的，你确认要删除吗？")) {
			$.post("DelProject.do", {
				Projectid : $("#hiddenID").val(),
				userid : UserID
			}, function(data) {
				//alert(JSON.stringify(data));
				var flg = false;
				switch (data.fail_code) {
				case "M01U004E001":
					alert("用户登录失效，请重新登录。");
					parent.window.open("login.do", "_self");
					break;
				case -1:
					flg = true;
					break;
				}
				if (data.exec_code == 1 && flg) {
					alert("删除成功。");
					$("#hiddenID").val("");
					LoadData();
				}
			});
		} else {
			$("#hiddenID").val("");
			ClearNews();
		}
	}

	function openDetail(objid) {
			$.ajax({
				async : false,
				url : "GetProjectByProjectID.do",
				data : {
					Projectid : $("#hiddenID").val()
				},
				type : "post",
				success : function(data) {
					if (data != null) {
						$("#hiddenID").val(data.ProjectID);
						$("#PublicDate").val(data.PublicDate);
						$("#ProjectTitle").val(data.ProjectTitle);

						$("#editlink").val(data.LinkAddress);
						$("#editlink").show();
						var picurls = "";
						for (var i = 0; i < data.picturesList.length; i++) {
							picurls += data.picturesList[i] + ";";
						}
						if (picurls != "") {
							$("#editpic").val(picurls);
							$("#editpic").show();
						}
					}
				}
			});
	}
</script>
</head>

<body>

	<!-- content starts -->
	<div>
		<ul class="breadcrumb">
			<li><a href="javascript:void(0);">首页</a></li>
			<li><a href="javascript:void(0);">重点项目</a></li>
		</ul>
	</div>

	<div class="row">
		<div class="box col-md-12">
			<div class="box-inner">
				<div class="box-header well">
					<h2>
						<i class="glyphicon glyphicon-forward"></i> 重点项目
					</h2>
				</div>
				<div class="box-content row">
					<div class="col-lg-7 col-md-12">

						<div class="alert alert-info">
							<a id="btnAdd" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal" data-backdrop='static'> <i
								class="glyphicon glyphicon-plus icon-white"></i> 增加
							</a> <a id="btnEdit" class="btn btn-info" data-toggle="modal"
								data-backdrop='static'> <i
								class="glyphicon glyphicon-edit icon-white"></i> 修改
							</a> <a id="btnDel" class="btn btn-danger"
								href="javascript:void Del();" data-backdrop='static'> <i
								class="glyphicon glyphicon-remove icon-white"></i> 删除
							</a>
						</div>
						<table class="table table-bordered table-hover table-condensed">
							<thead>
								<tr>
									<th style="width:90px;text-align:center;">发布日期</th>
									<th style="width:200px;text-align:center;">标题</th>
									<th style="width:170px;text-align:center;">内容页</th>
								</tr>
							</thead>
							<tbody id="datatb">

							</tbody>
						</table>
						<div id="pages"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- content ends -->
	<div id="modalarea">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button id="btnmodalclose" type="button" class="close"
							data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">
							<span id="spTitle">重点项目</span>
						</h4>
					</div>
					<div class="modal-body">
						<form id="editform" name="editform" method="post"
							enctype="multipart/form-data">
							<!-- TODO 修改隐藏域hiddenID 的name属性 -->
							<input type="hidden" id="hiddenID" name="ProjectID" /> <input
								type="hidden" id="UserID" name="UserID" /> <input type="hidden"
								id="ProjectCategory" name="ProjectCategory" value="1" />
							<table class="table">
								<tr>
									<td style="width:130px;">发布日期：</td>
									<td><input id="PublicDate" type="text"
										class="form-control" name="PublicDate" onclick="WdatePicker()" /></td>
								</tr>
								<tr>
									<td style="width:130px;">标题：</td>
									<td><input id="ProjectTitle" type="text"
										class="form-control" name="ProjectTitle" maxlength="100" /></td>
								</tr>
								<tr>
									<td>内容页：</td>
									<td><input id="editlink" name="editlink"
										style="display: none;border: none; width: 100%;"
										readonly="readonly" /><input id="LinkAddress" type="file"
										name="LinkAddress" />
										<div id="errorlink" class="help-block"></div></td>
								</tr>
								<tr>
									<td>图片：</td>
									<td><input id="editpic"
										style="display: none;border: none; width: 100%;"
										readonly="readonly" /><input id="picturesList" type="file"
										name="picturesList" multiple />
										<div id="errorimg" class="help-block"></div></td>
								</tr>
							</table>
						</form>
					</div>
					<div class="modal-footer">
						<button id="btnClose" type="button" class="btn btn-default">关&nbsp;&nbsp;闭</button>
						<button id="btnSave" type="button" class="btn btn-primary">保&nbsp;存</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
