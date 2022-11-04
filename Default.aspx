<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Flixster.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
    <link rel="stylesheet" href="StyleDefault.css" />
    <title>Flisxter</title>
 
</head>
<body>
    <form id="form1" runat="server">

             <div class="navbar">
                 <ul>
                     <li>
                          <div>
                            <asp:Image ID="Image1" runat="server" />
                         </div>
                     </li>
                 </ul>
 
            </div>


            <br/>

        <div class="main">
            <div class="row">

            <div class="col-lg-6">
                 <div class="contentsDetails">
                        <h2><asp:Label ID="lbl_title" runat="server" Text="Label"></asp:Label></h2>
                        <asp:Label ID="label1" runat="server" Text="Label" Height="120px" Width="392px" style="margin-right: 0px"></asp:Label>
                        <br/>
                   <div class="buttons">
                        <asp:Button  class="btn btn-dark" ID="btn_precedent" runat="server"  Text="Precedent" OnClick="btn_precedent_Click" />
                        <br />
                        <asp:Button class="btn btn-warning"  ID="btn_suivant" runat="server"  Style="margin-left:30px;" Text="Suivant" OnClick="btn_suivant_Click" />
                   </div>
             </div>

            </div>

            <div class="col-lg-6">
                 <div class="imagecover">
                    <a href="Detail.aspx"> 
                         <asp:Image ID="pictureBox1"  Style="margin-left:15px;" runat="server"/>
                    </a>
                 </div>

            </div>

        </div>
        </div>

        
        
            
        
    </form>
         
</body>
</html>
