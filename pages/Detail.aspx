<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="Flixster.Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detail</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
 <link rel="stylesheet" href="StyleDetail.css" />
</head>
<body>
     <asp:Image  class="connectionStatus" ID="Image1" runat="server" />
    <form id="form1" runat="server">
       
        <div class="main">
           
            <div class="row">
                <div class="col-lg-6">
                    
                    <div class="moviepreview">
                        <h2> <asp:Label ID="lblTitle" runat="server" Font-Bold="True" Text="Label"></asp:Label></h2>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        <p><asp:Label ID="lblOverview" runat="server" Text="Label"></asp:Label></p>
                    </div> 
                </div>

                <div class="col-lg-6">
                    
                    <div class="row">
                        <div class="movieCover">
                            <asp:Image ID="Image" Width="50%" runat="server" />
                        </div>
                        
                    </div>

                <div class="row">
                     <asp:Image ID="Image2" runat="server" />
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Original Language"></asp:Label>
                    <asp:Label ID="lblLanguage" runat="server" Text="Label"></asp:Label>
               
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Release Date"></asp:Label>
                    <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
               
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Popularity"></asp:Label>
                    <asp:Label ID="lblPopularity" runat="server" Text="Label"></asp:Label>
                
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Vote Average"></asp:Label>
                    <asp:Label ID="lblAverage" runat="server" Text="Label"></asp:Label>
               
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Vote Count"></asp:Label>
                    <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>

                </div>
                </div>
            </div>
      
        </div>
    </form>
</body>
</html>
