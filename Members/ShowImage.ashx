<%@ WebHandler Language="VB" Class="imageHandler" %>

Imports System.Data.OleDb
Imports System.Web

Public Class imageHandler
    Implements IHttpHandler

    Public Sub ProcessRequest(context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim qry As String = "SELECT Photo, PhotoFileName, PhotoMime, FROM test WHERE ID = ?"
        Dim connect As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|eatwithme.accdb;"

        Using conn As New OleDbConnection(connect)
            If context.Request.QueryString("id") IsNot Nothing Then
                Dim cmd As New OleDbCommand(qry, conn)
                cmd.Parameters.AddWithValue("", context.Request.QueryString("id"))
                conn.Open()
                Using rdr As OleDbDataReader = cmd.ExecuteReader()
                    If rdr.HasRows Then
                        rdr.Read()
                        context.Response.AddHeader("content-disposition", "attachment; filename=" & Convert.ToString(rdr("PhotoFileName")))
                        context.Response.ContentType = rdr("PhotoMime").ToString()
                        context.Response.BinaryWrite(DirectCast(rdr("Photo"), Byte()))
                    End If
                End Using
            End If
        End Using
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return True
        End Get
    End Property

End Class