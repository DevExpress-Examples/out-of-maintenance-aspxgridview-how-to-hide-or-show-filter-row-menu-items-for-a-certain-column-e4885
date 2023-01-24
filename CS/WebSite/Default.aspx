﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var textContentProp = null;
        function OnPageReady(s, e) {
            textContentProp = "innerText" in document.body ? "innerText" : "textContent";
            var elements = document.getElementsByClassName("filterCell");
            for (var i = 0; i < elements.length; i++) {
                ASPxClientUtils.AttachEventToElement(elements[i], "click", function (event) {
                    var hide = event.currentTarget.className.indexOf("necessaryColumn") > 0 ? false : true;
                    ManageOptions(hide);
                });
            }
        }
        function ManageOptions(visible) {
            var value = visible ? "list-item" : "none";
            var options = document.getElementsByClassName("frmi");
            for (var i = 0; i < options.length; i++) {
                var option = options[i];
                var text = option[textContentProp].toLowerCase();
                if (text.indexOf("equals") >= 0 || text.indexOf("is less than") >= 0)
                    option.style["display"] = value;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGlobalEvents ID="ASPxGlobalEvents1" runat="server">
            <ClientSideEvents ControlsInitialized="OnPageReady" />
        </dx:ASPxGlobalEvents>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server">
            <Settings ShowFilterRow="true" ShowFilterRowMenu="true" />
            <Columns>
                <dx:GridViewDataTextColumn FieldName="Col1">
                    <FilterCellStyle CssClass="necessaryColumn"></FilterCellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Col2">
                </dx:GridViewDataTextColumn>
            </Columns>
            <Styles>
                <FilterCell CssClass="filterCell"></FilterCell>
                <FilterRowMenuItem CssClass="frmi"></FilterRowMenuItem>
            </Styles>
        </dx:ASPxGridView>
    </div>
    </form>
</body>
</html>
