<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WebDataGrid</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <ig:WebDataGrid ID="WebDataGrid1" runat="server" AutoGenerateColumns="False"
                Width="800" Height="425" DataKeyFields="EmployeeID">
                <Columns>
                    <ig:BoundDataField DataFieldName="EmployeeID" Key="EmployeeID">
                        <Header Text="EmployeeID" />
                    </ig:BoundDataField>
                    <ig:BoundDataField DataFieldName="Name" Key="Name">
                        <Header Text="Name" />
                    </ig:BoundDataField>
                    <ig:BoundDataField DataFieldName="OnSite" Key="OnSite">
                        <Header Text="OnSite" />
                    </ig:BoundDataField>
                    <ig:BoundDataField DataFieldName="DateOfHire" Key="DateOfHire">
                        <Header Text="DateOfHire" />
                    </ig:BoundDataField>
                    <ig:BoundDataField DataFieldName="Department" Key="Department">
                        <Header Text="Department" />
                    </ig:BoundDataField>
                    <ig:BoundDataField DataFieldName="Site" Key="Site">
                        <Header Text="Site" />
                    </ig:BoundDataField>
                </Columns>
                <Behaviors>
                    <ig:Filtering Alignment="Top" Visibility="Visible" Enabled="true" AnimationEnabled="true" />
                </Behaviors>
            </ig:WebDataGrid>
        </div>
    </form>
</body>
</html>
