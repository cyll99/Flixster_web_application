<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Flixster.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Flisxter</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
     <style type="text/css">
         .col-lg-6 {
             width: 395px;
         }
     </style>
</head>
<body style="height: 144px">
      <div class="jumbotron text-center">
        
            <h1 class="display-1" >FLIXSTER&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" />
            </h1>

    </div>
    <div>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-lg-12">
                  <div class="col-lg-12">
                        <div class="col-lg-6">
                   <div class="col-lg-6"> <asp:Label ID="lbl_title" runat="server" Text="Label"></asp:Label>
            <br /></div>

           <div class="col-lg-6"><asp:Label ID="label1" runat="server" Text="Label" Height="120px" Width="392px" style="margin-right: 0px"></asp:Label>
               <div class="col-lg-6" style="margin-left: 440px"><a href="Detail.aspx">
        <asp:Image ID="pictureBox1" runat="server" /></a> </div>
            <br /></div>
                    </div>
                  </div>
              
                    
     
            <br />
                </div>
            <div class="col-lg-8"> <asp:Button ID="btn_precedent" runat="server"  Text="Precedent" OnClick="btn_precedent_Click" />
            <br /></div>
           
            <br />
            <div class="col-lg-8"><asp:Button ID="btn_suivant" runat="server"  Text="Suivant" OnClick="btn_suivant_Click" />
            <br /></div>
        
                    
            
            </div>
    </form>
         </div>
</body>
</html>
