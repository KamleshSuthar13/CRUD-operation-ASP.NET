Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\ASP.NET\App_Data\Database.mdf;Integrated Security=True;User Instance=True")

    Sub show_grid_data()
        Dim str As String = "select * from student"
        Dim cmd As New SqlCommand(str, con)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New Data.DataSet
        adp.Fill(ds)
        GridView1.DataSource = ds.Tables(0)
        GridView1.DataBind()
        'Me.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        show_grid_data()
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim str As String = "insert into student values(" & TextBox1.Text & ", ' " & TextBox2.Text & " ' ," & TextBox3.Text & ")"
        Dim ans As Integer
        Dim cmd As New SqlCommand(str, con)
        con.Open()
        ans = cmd.ExecuteNonQuery()
        con.Close()
        MsgBox("Record inserted successfully " & ans)
        show_grid_data()
    End Sub


    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim str As String = "update student set stud_name = '" & TextBox2.Text & "', stud_marks=" & TextBox3.Text & " where stud_id = " & TextBox1.Text & ""
        Dim ans As Integer
        Dim cmd As New SqlCommand(str, con)
        con.Open()
        ans = cmd.ExecuteNonQuery()
        con.Close()
        MsgBox("Record updated successfully" & ans)
        show_grid_data()
    End Sub


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim str As String = "delete from student where stud_id=" & TextBox1.Text & ""
        Dim ans As Integer
        Dim cmd As New SqlCommand(str, con)
        con.Open()
        ans = cmd.ExecuteNonQuery()
        con.Close()
        MsgBox("Record Deleted Successfully" & ans)
        show_grid_data()

    End Sub


    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim str As String = "select * from student where stud_id = " & TextBox1.Text & ""
        Dim dr As SqlDataReader
        Dim cmd As New SqlCommand(str, con)
        con.Open()
        dr = cmd.ExecuteReader()
        While dr.Read
            TextBox2.Text = dr.Item(1).ToString
            TextBox3.Text = dr.Item(2).ToString
        End While
        con.Close()

    End Sub
End Class
