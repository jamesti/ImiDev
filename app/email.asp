<%
If urlo <> "contato" Then

Dim nome, email, setor, mensagem, alert, erro

nome = request.form("nome")
email = request.form("email")
setor = request.form("setor")
mensagem = request.form("mensagem")
alert = "<script>alert('Mensagem Enviada com Sucesso!')</script>"
erro = "<script>alert('Nao deixe em Branco nenhum Campo.')</script>"

If nome = "" Then
	Response.Write(erro)
ElseIf email = "" Then
	Response.Write(erro)
ElseIf setor = "" Then
	Response.Write(erro)
ElseIf mensagem = "" Then
	Response.Write(erro)
Else

Set Mail = CreateObject("CDO.Message")

Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") ="smtp.gmail.com"
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465

Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = 1

Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60

Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="jamesmsjr008@gmail.com"
Mail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="nyubai20"

Mail.Configuration.Fields.Update

Mail.Subject="Email do Site Desenvolvimento"
Mail.From=nome
Mail.Sender=email
Mail.To="desenvolvimento@imifarma.com.br"
Mail.HTMLBody ="<h3>Setor: "& setor &"</h3>" & "<h3>Nome: "& nome &"</h3>" & "<h3>Email: "& email &"</h3>" &	"<p>"& mensagem &"</p>"

Mail.Send
Set Mail = Nothing



End If

End If

%>

