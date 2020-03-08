<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>电子文档管理系统</title>
</head>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.js"></script>
<script>
    $(function () {
        $(" tr:nth-of-type:odd").css("background-color", "#CEFFCE");
    })

    function openAdd() {
        window.location.href = "/Rain/add";
    }
</script>

<!--查询出来的数据变色-->
<style type="text/css">
    /*奇数行*/
    #tbody tr:nth-of-type(odd) {
        background-color: #FFFFFF
    }
    /*偶数行*/
    #tbody tr:nth-of-type(even) {
        background-color: #7B7B7B
    }
</style>
<div style="padding-right:30px;">
    <form action="${pageContext.request.contextPath}/Rain/Rainlist" method="post" style="width: 700px">
        <input type="hidden" name="pageIndex" value="1"/>
        <table border="1" width="1000px" align="center">
            <tr>
                <td colspan="7" align="center" style="padding: 10px;font-size: 25px">电子文档列表</td>
            </tr>
            <tr align="center">
                <td>序号</td>
                <td>区域名称</td>
                <td>监测时间</td>
                <td>雨量值(mm)</td>
                <td>监测站</td>
                <td>站点地址</td>
                <td>操作</td>
            </tr>
            <tbody id="tbody">
            <c:forEach items="${rainqualities}" var="rainqualities" varStatus="vs">
                <tr>
                    <td>${vs.count}</td>
                    <td>${rainqualities.districtName}</td>
                    <td>${rainqualities.monitorTime}</td>
                    <td>${rainqualities.rain}</td>
                    <td>${rainqualities.monitoringStation}</td>
                    <td>${rainqualities.monitoringAddress}</td>
                    <td>
                            <%-- <a href="${pageContext.request.contextPath}/edocentry/openupdate?id=${status.id}">
                                 <input id="xiugai" type="button" value="修改"></a>--%>
                        <a href="${pageContext.request.contextPath}/Rain/dele?id=${rainqualities.id}">
                            <input type="button" value="删除" id="dele"></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <a href="/Rain/tadd">新增电子文档</a>
    </form>
</div>
</html>