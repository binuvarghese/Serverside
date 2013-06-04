Imports System.Data.OleDb
Imports System.Data

Partial Class contactus
    Inherits System.Web.UI.Page
    Protected Sub btn_Submit_Click(sender As Object, e As System.EventArgs) Handles btn_Submit.Click
        Dim objConnection As OleDbConnection
        Dim objCmd As OleDbCommand
        Dim strConnection As String
        Dim strSQL As String

        strConnection = "Provider=Microsoft.ACE.OLEDB.12.0;" & _
                        "Data Source=|DataDirectory|eatwithme.accdb;"

        ' Create and open the connection object
        objConnection = New OleDbConnection(strConnection)
        objConnection.Open()

        ' set the SQL string
        strSQL = "INSERT INTO contactus(Fullname,emailaddress,contactno,subject,queries)" & _
                          " VALUES ('" + txt_name.Text + "','" + txt_email.Text + "','" + txt_contact.Text + "','" + txt_subject.Text + "','" + txt_comments.Text + "')"

        ' Create the Command and set its properties
        objCmd = New OleDbCommand(strSQL, objConnection)

        ' execute the command
        objCmd.ExecuteNonQuery()

        ' Confirms the data entry with msgbox ok and redirect to view page
        Dim d As Integer
        Dim title As String
        Dim text As String
        title = "Comments"
        text = "Queries posted sucessfully"

        'd = MsgBox("Comment added sucessfully", MsgBoxStyle.OkOnly, title)
        d = MsgBox(text, MsgBoxStyle.MsgBoxSetForeground, title)
        If d = 1 Then
            Response.Redirect("index.aspx")

        End If
    End Sub
End Class
