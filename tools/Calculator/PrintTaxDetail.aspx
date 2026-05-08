<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintTaxDetail.aspx.cs" Inherits="PrintTaxDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Print Tax Details</title>
    <style type="text/css">
.Gridview
{
font-family:Verdana;
font-size:10pt;
font-weight:normal;
color:black;
 
}
</style>
    <style type="text/css">
    
   .DataRow:hover, .DataRowAlt:hover
{
    background-color: whitesmoke;
    
}
</style>

</head>
<body>
    <form id="form1" runat="server">
<div>
    <br /><br /><br /><br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"
         AllowPaging="true" PageSize="10" AllowSorting="true" 
        HeaderStyle-BackColor="gray" DataKeyNames="ID" OnPageIndexChanging="GridView1_PageIndexChanging" 
        OnRowCancelingEdit="GridView1_RowCancelingEdit" 
        OnRowDeleting="GridView1_RowDeleting"
         OnRowEditing="GridView1_RowEditing" 
        OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:ImageButton ID="DeleteButton" runat="server" 
                    CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this event?');"
                    AlternateText="Delete" />               
            </ItemTemplate>
        </asp:TemplateField> 
        <asp:CommandField ShowEditButton="true"  />
       
        </Columns>
        <FooterStyle BackColor="#CCCC99" />

<HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="left" />
        <RowStyle CssClass="DataRow" BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <%--<SortedAscendingCellStyle BackColor="#FBFBF2" />--%>
       <%-- <SortedAscendingHeaderStyle BackColor="#848384" />--%>
        <%--<SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />--%>
    </asp:GridView>
 
    </div>
<div>
<asp:Label ID="lblresult" runat="server"></asp:Label>
</div>
    </form>
</body>
</html>
