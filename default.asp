<!--#include file="site/template/header.html"-->
<!--#include file="site/template/menu.html"-->
<%
Dim urlo
urlo = request.querystring("a")

Select Case urlo
  Case "contato"
    %><!--#include file="site/contato.html"--><%
  Case "email"
    %><!--#include file="app/email.asp"-->
      <!--#include file="site/template/carousel.html"-->
      <!--#include file="site/template/equipe.html"-->
      <!--#include file="site/home.html"--><%
  Case "equipe"
    
  Case "projetos"
    
  Case "tecnologias"
    
  case else:
    %><!--#include file="site/template/carousel.html"-->
    <!--#include file="site/template/equipe.html"-->
    <!--#include file="site/home.html"--><%
End Select
%>
<!--#include file="site/template/footer.html"-->