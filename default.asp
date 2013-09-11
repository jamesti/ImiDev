<!--#include file="site/template/header.html"-->
<!--#include file="site/template/menu.html"-->
<%
Dim urlo
urlo = request.querystring("a")

Select Case urlo
  Case "contato"
    %><!--#include file="site/contato.html"--><%   
  Case "projetos"
    %><!--#include file="site/projetos.html"--><%
  Case "bpmn"
    %><!--#include file="site/login.html"--><%
  Case "uml"
    %><!--#include file="site/login.html"--><%
  Case "up"
    %><!--#include file="site/login.html"--><%
  Case "xp"
    %><!--#include file="site/login.html"--><%
  case else:
    %><!--#include file="site/template/carousel.html"-->
    <!--#include file="site/template/equipe.html"-->
    <!--#include file="site/home.html"--><%
End Select
%>
<!--#include file="site/template/footer.html"-->