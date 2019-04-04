<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to navigate between editors by pressing the Enter key like by the Tab key


<p>This example illustrates how to emulate  the Tab key using the Enter key. To accomplish this task, execute the following steps:</p><p><br />
- Handle the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientTextEdit_KeyDowntopic"><u>ASPxClientTextEdit.KeyDown</u></a> event;</p><p>- Use the <strong>e.htmlEvent</strong> parameter to operate the raised event;</p><p>- Call the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxClassesScriptsASPxClientUtils_PreventEventAndBubbletopic"><u>ASPxClientUtils.PreventEventAndBubble</u></a> method with the e.htmlEvent parameter to prevent performing the client browser submit mechanism;<br />
- Focus a necessary editor.</p><p><strong>See also:</strong> </p><p><a href="https://www.devexpress.com/Support/Center/p/E3552">How to navigate between editors by pressing the Enter key like by the Tab key (Razor demo)</a></p>

<br/>


