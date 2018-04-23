Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		ASPxGridView1.DataSource = Enumerable.Range(0, 10).Select(Function(i) New With {Key .Col1 = i, Key .Col2 = i*2})
		ASPxGridView1.DataBind()
	End Sub
End Class