Imports System.Data.OleDb
Imports System.Data

Partial Class addcomments
    Inherits System.Web.UI.Page



   
    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
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
        strSQL = "INSERT INTO comments(Fullname,Post_Date,email_address,Comments)" & _
                          " VALUES ('" + txt_fullname.Text + "','" + txt_date.Text + "','" + txt_email.Text + "','" + txt_comments.Text + "')"

        ' Create the Command and set its properties
        objCmd = New OleDbCommand(strSQL, objConnection)

        ' execute the command
        objCmd.ExecuteNonQuery()

        ' Confirms the data entry with msgbox ok and redirect to view page
        Dim d As Integer
        Dim title As String
        Dim text As String
        title = "Comments"
        text = "Comment added sucessfully"

        d = MsgBox(text, MsgBoxStyle.MsgBoxSetForeground, title)
        If d = 1 Then
            Response.Redirect("Review.aspx")

        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As System.EventArgs) Handles Button3.Click
        txt_fullname.Text = String.Empty
        txt_date.Text = String.Empty
        txt_email.Text = String.Empty
        txt_comments.Text = String.Empty
        'clears the string in textbox
    End Sub

End Class
