<%

IP = "www.domain.com" 'MaestroPanel'in çalýþtýðý site adresi ya da ip adresi (baþýnda http olmadan)
ApiAnahtari = "1_cf454b38f60a49d1821f33451331313" ' MaestroPanel altýnda Profil > API Anahtarý bölümünden tanýmlayabilirsiniz.
Port = "9715"










' GENEL BAGLANTI FONKSIYONU (BU BOLUME DOKUNMAYINIZ !!!)
Function baglan(data,degisken)
data1 = "key="&ApiAnahtari&"&"&data
Set ServerXmlHttp = Server.CreateObject("MSXML2.ServerXMLHTTP.6.0")
ServerXmlHttp.open "POST", "http://"&IP&":"&Port&"/Api/v1/Domain/"&degisken&""
ServerXmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
ServerXmlHttp.setRequestHeader "Content-Length", Len(data)
ServerXmlHttp.send data1
response.write ServerXmlHttp.responseText
Set ServerXmlHttp = nothing
End Function

Function sil(data,degisken)
data1 = "key="&ApiAnahtari&"&"&data
Set ServerXmlHttp = Server.CreateObject("MSXML2.ServerXMLHTTP.6.0")
ServerXmlHttp.open "DELETE", "http://"&IP&":"&Port&"/Api/v1/Domain/"&degisken&""
ServerXmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
ServerXmlHttp.setRequestHeader "Content-Length", Len(data)
ServerXmlHttp.send data1
response.write ServerXmlHttp.responseText
Set ServerXmlHttp = nothing
End Function
'END
%>