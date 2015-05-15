<!--#include file = "ayarlar.asp"-->
<%
Function emailEkle(domain,email,sifre,kota)
response.write baglan("name="&domain&"&account="&email&"&password="&sifre&"&quota="&kota,"AddMailBox")
End Function

Function emailSil(domain,email)
response.write baglan("name="&domain&"&account="&email,"DeleteMailBox")
End Function

Function emailSifreDegistir(domain,email,sifre)
response.write baglan("name="&domain&"&account="&email&"&newpassword="&sifre,"ChangeMailBoxPassword")
End Function

Function emailKotaDegistir(domain,email,kota)
response.write baglan("name="&domain&"&account="&email&"&quota="&kota,"ChangeMailBoxQuota")
End Function

Function domainOlustur(domain,domainPlani,ftpKullaniciAdi,ftpSifre)
response.write baglan("name="&domain&"&planAlias="&domainPlani&"&username="&ftpKullaniciAdi&"&password="&ftpSifre&"&activedomainuser=false&format=json","Create")
End Function

Function domainSil(domain)
response.write sil("name="&domain,"Delete")
End Function

Function veritabaniEkle(domain,veritabaniAdi,kullaniciAdi,sifre,tipi,kota)
response.write baglan("name="&domain&"&database="&veritabaniAdi&"&username="&kullaniciAdi&"&password="&sifre&"&dbtype="&tipi&"&quota="&kota&"","AddDatabase")
End Function

Function veritabaniSil(domain,veritabaniAdi,tipi)
response.write sil("name="&domain&"&database="&veritabaniAdi&"&dbtype="&tipi,"DeleteDatabase")
End Function
%>