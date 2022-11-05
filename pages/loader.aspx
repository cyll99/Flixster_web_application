<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loader.aspx.cs" Inherits="Flixster.pages.loader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="StyleSheet.css">
    <script type="text/javascript">  
        window.onload = function () {
            window.location.replace("Default.aspx");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="loader"></div>
    </form>
</body>
</html>
