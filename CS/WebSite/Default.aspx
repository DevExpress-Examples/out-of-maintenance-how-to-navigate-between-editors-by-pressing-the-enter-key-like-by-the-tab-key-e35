<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to navigate between editors by pressing the Enter key like by the Tab key
    </title>

    <script type="text/javascript">

        function DoProcessEnterKey(htmlEvent, editName) {
            if (htmlEvent.keyCode == 13) {
                ASPxClientUtils.PreventEventAndBubble(htmlEvent);
                if (editName) {
                    ASPxClientControl.GetControlCollection().GetByName(editName).SetFocus();
                } else {
                    btn.DoClick();
                }
            }
        }

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Focus the first editor and press the Enter key
                </td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" ClientInstanceName="tb1" Width="170px">
                        <ClientSideEvents KeyDown="function(s, e) { DoProcessEnterKey(e.htmlEvent, 'tb2'); }" />
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxTextBox ID="ASPxTextBox2" runat="server" ClientInstanceName="tb2" Width="170px">
                        <ClientSideEvents KeyDown="function(s, e) { DoProcessEnterKey(e.htmlEvent, 'tb3');  }" />
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxTextBox ID="ASPxTextBox3" runat="server" ClientInstanceName="tb3" Width="170px">
                        <ClientSideEvents KeyDown="function(s, e) { DoProcessEnterKey(e.htmlEvent, ''); }" />
                    </dx:ASPxTextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxButton ID="btn" runat="server" AutoPostBack="False" ClientInstanceName="btn" UseSubmitBehavior="true"
                        OnClick="btn_Click" Text="Do PostBack">
                    </dx:ASPxButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
