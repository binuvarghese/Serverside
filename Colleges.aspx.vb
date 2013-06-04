Imports System.Data.OleDb
Imports System.Data
Imports System

Imports System.Text.RegularExpressions
Imports System.Web.UI
Partial Class Colleges
    Inherits System.Web.UI.Page

    '  Create a String to store our search results
    Private SearchString As String = ""
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
    End Sub

    Public Function HighlightText(ByVal InputTxt As String) As String
        Dim Search_Str As String = txtsearch.Text
        ' Setup the regular expression and add the Or operator.
        Dim RegExp As Regex = New Regex(Search_Str.Replace(" ", "|").Trim, RegexOptions.IgnoreCase)
        ' Highlight keywords by calling the
        'delegate each time a keyword is found.
        Return RegExp.Replace(InputTxt, New MatchEvaluator(AddressOf ReplaceKeyWords))
    End Function

    Public Function ReplaceKeyWords(ByVal m As Match) As String
        Return ("<span class=highlight>" + m.Value + "</span>")
    End Function

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As ImageClickEventArgs)
        '  Set the value of the SearchString so it gets
        SearchString = txtsearch.Text
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As ImageClickEventArgs)
        '  Simple clean up text to return the Gridview to it's default state
        txtsearch.Text = ""
        SearchString = ""
        DataList1.DataBind()
    End Sub

    '<System.Web.Services.WebMethodAttribute()> <System.Web.Script.Services.ScriptMethodAttribute()> Public Shared Function GetDynamicContent(contextKey As System.String) As System.String

    'End Function
End Class
