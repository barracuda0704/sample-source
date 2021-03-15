<%@ page contentType="text/html;charset=euc-kr" session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>JDBC Test with Datasource</title>
</head>
<body>
<%

try {
	InitialContext ctx = new InitialContext();
	/* DataSource ds = (DataSource) ctx.lookup("oracleDS"); */
	DataSource ds = (DataSource) ctx.lookup("java:/comp/env/jdbc/OracleDS");
	Connection conn = ds.getConnection();

 	String sql = "select * from DUAL";
    Statement  st=null;
    ResultSet  rs=null;
    st=conn.createStatement();
    rs=st.executeQuery(sql);
	out.println("Connection Success <br>");
    out.println(rs.getType());

    while(rs.next())
    {
    	out.println("result Type : "+rs.getType()+"<br>");
        out.println("TABLE_NAME :" + rs.getString(1)+"<br>");
    }

	conn.close();
} catch (SQLException sqlE) {	
	sqlE.printStackTrace();
	out.println (sqlE.getMessage());
    
} catch (Exception e) {	
	e.printStackTrace();
    out.println("Connection Fail <br>");
	out.println(e.getMessage());
}
%>
</body>
</html>
