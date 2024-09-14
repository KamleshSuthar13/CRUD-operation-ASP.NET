<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 72%;
            margin-left: 0px;
            margin-top: 55px;
        }
        .style2
        {
            width: 293px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 style="color: #0000FF">CRUD Operation</h1>
    </div>
    <div>
        
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Marks"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br /><br />
                    <asp:Button ID="Button1" runat="server" Text="Insert" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Update" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Delete" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Search" />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br /><br />   
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                        CellSpacing="2" ForeColor="Black" Width="591px">
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
