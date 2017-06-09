﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Layout.aspx.cs" Inherits="Layout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script lang="jv">
        function Stu_Information()//javascript函数，功能为在iframe中载入S_Information.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Student")//判断登录成员是否为学生
            {
                document.getElementById("right_iframe").src = "S_Information.aspx";
            }
            else
            {
                document.getElementById("S_Information").style.display = "none";
            }
        }
        function Stu_Change()//javascript函数，功能为在iframe中载入Updata.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Student")//判断登录成员是否为学生
            {
                document.getElementById("right_iframe").src = "Updata.aspx";
            }
            else
            {
                document.getElementById("S_Change").style.display = "none";
            }
        }
        function Stu_Class()//javascript函数，功能为在iframe中载入S_Class.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Student")//判断登录成员是否为学生
            {
                document.getElementById("right_iframe").src = "S_Class.aspx";
            }
            else
            {
                document.getElementById("S_Class").style.display = "none";
            }
        }
        function Stu_Mark()//javascript函数，功能为在iframe中载入S_Mark.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Student")//判断登录成员是否为学生
            {
                document.getElementById("right_iframe").src = "S_Mark.aspx";
            }
            else
            {
                document.getElementById("S_Mark").style.display = "none";
            }
        }
        function Stu_SelectClass()//javascript函数，功能为在iframe中载入Select.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Student")//判断登录成员是否为学生
            {
                document.getElementById("right_iframe").src = "Select.aspx";
            }
            else
            {
                document.getElementById("S_SelectClass").style.display = "none";
            }
        }
        function Tea_Information()//javascript函数，功能为在iframe中载入T_Information.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Teacher")//判断登录成员是否为教师
            {
                document.getElementById("right_iframe").src = "T_Information.aspx";
            }
            else
            {
                document.getElementById("T_Information").style.display = "none";
            }
        }
        function Tea_Change()//javascript函数，功能为在iframe中载入T_Change.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Teacher")//判断登录成员是否为教师
            {
                document.getElementById("right_iframe").src = "T_Change.aspx";
            }
            else
            {
                document.getElementById("T_Change").style.display = "none";
            }
        }
        function Tea_Class()//javascript函数，功能为在iframe中载入T_Class.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Teacher")//判断登录成员是否为教师
            {
                document.getElementById("right_iframe").src = "T_Class.aspx";
            }
            else
            {
                document.getElementById("T_Class").style.display = "none";
            }
        }
        function Tea_AddClass()//javascript函数，功能为在iframe中载入T_AddClass.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Teacher")//判断登录成员是否为教师
            {
                document.getElementById("right_iframe").src = "T_AddClass.aspx";
            }
            else
            {
                document.getElementById("T_AddClass").style.display = "none";
            }
        }
        function Tea_DeleteClass()//javascript函数，功能为在iframe中载入T_DeleteClass.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Teacher")//判断登录成员是否为教师
            {
                document.getElementById("right_iframe").src = "T_DeleteClass.aspx";
            }
            else
            {
                document.getElementById("T_DeleteClass").style.display = "none";
            }
        }
        function Tea_ClassMark()//javascript函数，功能为在iframe中载入T_ClassMark.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Teacher")//判断登录成员是否为教师
            {
                document.getElementById("right_iframe").src = "T_ClassMark.aspx";
            }
            else
            {
                document.getElementById("T_ClassMark").style.display = "none";
            }
        }
        function Tea_ChangeMark()//javascript函数，功能为在iframe中载入T_ChangeMark.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Teacher")//判断登录成员是否为教师
            {
                document.getElementById("right_iframe").src = "T_ChangeMark.aspx";
            }
            else
            {
                document.getElementById("T_ChangeMark").style.display = "none";
            }
        }
        function Tea_InputMark()//javascript函数，功能为在iframe中载入T_InputMark.aspx页面
        {
            if ("<%=Session["role"].ToString()%>" == "Teacher")//判断登录成员是否为教师
            {
                document.getElementById("right_iframe").src = "T_InputMark.aspx";
            }
            else
            {
                document.getElementById("T_InputMark").style.display = "none";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="top" style="position:absolute; width:100%; height:50px; background-color:pink; border:solid; top:0px">
        <div style="position:absolute; left:5px; top:10px">
            <asp:Button ID="Button1" runat="server" Text="退出登录" OnClick="Button1_Click" />
        </div>
        <center>
            <asp:Label ID="Label1" runat="server" Text="信息平台" Font-Size="XX-Large"></asp:Label>
        </center>
        <div style="position:absolute; right:10px; top:0px">
            <asp:Label ID="Label2" runat="server"></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Text="欢迎您"></asp:Label>
        </div>
    </div>
    <div id="left" style="position:absolute; height:93%; width:200px; top:55px; background-color:gray; border:solid">
        <div id="Student" style="position:absolute; height:415px; width:200px; background-color:purple; align-items:center">
            <asp:Label ID="Label4" runat="server" Text="学生" Font-Size="XX-Large"></asp:Label><br />
            <input type="button" id="S_Information" value="学生个人信息" onclick="Stu_Information()" /><br />
            <input type="button" id="S_Change" value="修改个人信息" onclick="Stu_Change()" /><br />
            <input type="button" id="S_Class" value="查询已选课程" onclick="Stu_Class()" /><br />
            <input type="button" id="S_Mark" value="查询课程成绩" onclick="Stu_Mark()" /><br />
            <input type="button" id="S_SelectClass" value="学生选课" onclick="Stu_SelectClass()" />
        </div>
        <div id="Teacher" style="position:absolute; height:400px; width:200px; background-color:brown; top:415px">
            <asp:Label ID="Label5" runat="server" Text="教师" Font-Size="XX-Large"></asp:Label><br />
            <input type="button" id="T_Information" value="教师个人信息" onclick="Tea_Information()" /><br />
            <input type="button" id="T_Change" value="修改个人信息" onclick="Tea_Change()" /><br />
            <input type="button" id="T_Class" value="查询已开课程" onclick="Tea_Class()" /><br />
            <input type="button" id="T_AddClass" value="增开课程" onclick="Tea_AddClass()" /><br />
            <input type="button" id="T_DeleteClass" value="课程是否可选" onclick="Tea_DeleteClass()" /><br />
            <input type="button" id="T_ClassMark" value="查询学生成绩" onclick="Tea_ClassMark()" /><br />
            <input type="button" id="T_ChangeMark" value="修改学生成绩" onclick="Tea_ChangeMark()" /><br />
            <input type="button" id="T_InputMark" value="录入学生成绩" onclick="Tea_InputMark()" />
        </div>
    </div>
    <iframe id="right_iframe" style="position:absolute; left:214px; top:55px; height:815px; width:1473px; overflow:auto; background-color: #66FFFF;" src="mainpage.aspx"></iframe>
    </form>
</body>
</html>
