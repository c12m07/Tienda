<%@ page
    import="
        java.io.*,
        java.util.*,
        com.BO.TiendaVirtualSB.*,
        com.DTO.TiendaVirtualSB.*"
%>
<html>
<% 
    ClienteController cc=new ClienteController();
    ClienteVO cli=new ClienteVO();
    int id=Integer.parseInt(request.getParameter("idcliente"));
    cli.setNombreCliente(request.getParameter("nombre"));
    cli.setIdCliente(id);    cli.setApellidoCliente(request.getParameter("apellido"));
    cc.registrarPersona(cli);
%>
<head>
<title>Page Redirection</title>
</head>
<body>
    <h1>Using GET Method to Read Form Data</h1>
    <ul>
        <li><p>
                <b>Id:</b>
                <%= request.getParameter("idcliente")%>
            </p></li>
        <li><p>
                <b>Nombre:</b>
                <%= request.getParameter("nombre")%>
            </p></li>
        <li><p>
                <b>Apellido:</b>
                <%= request.getParameter("apellido")%>
            </p></li>
    </ul>
</body>
</html>