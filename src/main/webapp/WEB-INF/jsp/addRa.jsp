<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>电子文档管理系统</title>
</head>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.js"></script>
<script >
    $(function () {
        $("#myform").submit(function () {
            var districtName = $("#districtName").val();
            var monitorTime = $("#monitorTime").val();
            var time = /^[1-9][0-9]{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
            var rain = $("#rain").val();
            var monitoringStation = $("#monitoringStation").val();
            var monitoringAddress = $("#monitoringAddress").val();
            if(districtName == "" || districtName==null){
                alert("请输入区域名称")
                return false;
            }
            if(monitorTime=="" || monitorTime==null){
                alert("监测日期不能为空")
            }
            if(!time.test(monitorTime)){
                alert("监测日期必须符合日期格式。如：2013-01-01");
                return false;
            }
            if(rain=="" || rain==null){
                alert("雨量值不能为空！")
                return false;
            }
            if(monitoringStation=="" || monitoringStation==null){
                alert("监测站不能为空！")
                return false;
            }
            if(monitoringAddress=="" || monitoringAddress==null){
                alert("站点地址不能为空")
                return false;
            }
        });
    })
</script>
<div>
    <form action="${pageContext.request.contextPath}/Rain/add" method="post">
        <table>
            <caption>新增雨量监测信息</caption>
            <tr>
                <td>区域名称:</td>
                <td><input type="text" name="districtName" id="districtName"></td>
            </tr>
            <tr>
                <td>监测时间:</td>
                <td><input type="text" name="monitorTime" id="monitorTime">yyyy.MM.dd格式</td>
            </tr>
            <tr>
                <td>雨量值(mm):</td>
                <td><input type="text" name="rain" id="rain"></td>
            </tr>
            <tr>
                <td>监测站:</td>
                <td><input type="text" name="monitoringStation" id="monitoringStation"></td>
            </tr>
            <tr>
                <td>站点地址:</td>
                <td><input type="text" name="monitoringAddress" id="monitoringAddress"></td>
            </tr>
            <tr>
                <td colspan="3">
                    <input type="submit" value="保存"/>
                    <input type="reset" value="重置"/>
                    <input type="button" onclick="javascript:history.back(-1)" value="返回">
                </td>
            </tr>
        </table>
    </form>
</div>
</html>