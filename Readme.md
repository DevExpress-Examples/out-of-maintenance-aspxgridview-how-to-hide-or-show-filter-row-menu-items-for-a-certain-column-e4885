<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128534389/13.1.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4885)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to hide or show filter row menu items for a certain column
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4885/)**
<!-- run online end -->


<p>This example demonstrates how to hide or show filter row menu items for a certain column.</p><br />
<p>To do this, we assign CSS classes to:</p><p>- Filter cells using the Styles.FilterCell.CssClass property;</p><p>- Filter row menu items using the Styles.FilterRowMenuItem.CssClass property;</p><p>- Specific column's filter cell using the GridViewDataColumn.FilterCellStyle.CssClass property;</p><br />
<p>These classes will be used later to find the necessary elements. In addition, the ASPxGlobalEvents control is used to attach client events to those elements:<br />


```js
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

```

The element's "display" style is changed based on specific conditions.</p>

<br/>


