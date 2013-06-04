
Partial Class index
    Inherits System.Web.UI.Page

    
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Label1.Text = DateTime.Now.ToShortDateString()
    End Sub
End Class
