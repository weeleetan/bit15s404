Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data.SqlTypes
Imports System.Configuration

Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim markers As String = ""
        markers = GetMarkers()
        jss.Text = "<script type='text/javascript'>" + _
        "function initialize() {" + _
        "var mapOptions = {" + _
        "center: new google.maps.LatLng(1.362678, 103.8234235)," + _
        "zoom: 12," + _
        "mapTypeId : google.maps.MapTypeId.ROADMAP" + _
        "};" + _
        "var myMap = new google.maps.Map(document.getElementById('mapArea'), mapOptions);" + _
        markers + _
        "}" + _
        "</script>"
    End Sub

    Protected Function GetMarkers() As String
        Dim markers As String = ""


        Using con As New SqlConnection("User ID=bit15s404;Password=Password1;Initial Catalog=bit15s404;Data Source=bit15s404.mssql.somee.com")
            Dim cmd As SqlCommand = New SqlCommand("SELECT Latitude, Longitude, City FROM Locations", con)
            con.Open()
            Dim reader As SqlDataReader = cmd.ExecuteReader()
            Dim i As Integer = 0
            While reader.Read()
                i = i + 1
                markers = markers + "var marker" + i.ToString() + "= new google.maps.Marker({" + _
                "position: new google.maps.LatLng( " + reader("Latitude").ToString() + ", " + _
                reader("Longitude").ToString() + ")," + _
                "map: myMap," + _
                "title:'" + reader("City").ToString() + "'});"
            End While
            con.Close()
        End Using
        Return markers
    End Function

End Class