<%@page import="java.sql.Date"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="java.sql.*" %>
<%@ page import="org.apache.commons.io.output.*"  errorPage="ErrorPage.jsp"%>
 <%@ page errorPage="ErrorPage.jsp" %>
<%!String titlename; %>
<%!String title1,About,category,fname,isbn; %>
<%!String value[]=new String[4]; %>
<%!int likes,dislikes; %>
<%
   File file ;
   int maxFileSize = 50000 * 1024;
   int maxMemSize = 50000 * 1024;
   ServletContext context = pageContext.getServletContext();
   String filePath = context.getInitParameter("file-upload");

   // Verify the content type
   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory1 = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory1.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory1.setRepository(new File("D:\\tgmc final editing\\TGMC11\\documents"));

      // Create a new file upload handler
      ServletFileUpload upload1 = new ServletFileUpload(factory1);
      // maximum file size to be uploaded.
      upload1.setSizeMax( maxFileSize );
      try{ 
         // Parse the request to get file items.
         List fileItems = upload1.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         int j=0;
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
          
            value[0] = fi.getString();
            fi=(FileItem)i.next();
            value[3] = fi.getString();
            fi=(FileItem)i.next();
            value[1] = fi.getString();
            fi=(FileItem)i.next();
            value[2] = fi.getString();
            fi=(FileItem)i.next();
            
            if ( !fi.isFormField () )	
            {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName =UUID.randomUUID().toString()+ fi.getName();
            fname=fileName;
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
            // Write the file
            if( fileName.lastIndexOf("\\") >= 0 ){
            file = new File( filePath + 
            fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
            file = new File( filePath + 
            fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            fi.write( file ) ;
break;
            }
           
         }
   
         
         out.println("</body>");
         out.println("</html>");
      }catch(Exception ex) {
         System.out.println(ex);
      }
   }else{
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet upload</title>");  
      out.println("</head>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
%>







<%

String emailid=session.getAttribute("emailid").toString();

title1=value[0];
About=value[1];
category=value[2];
isbn=value[3];
Connection conn=null;	
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");

String myquery="INSERT INTO VAIDHYANATHAN.BOOKS (DOCNAME, DOCID, PROFILETYPE, DOCDESCRIPTION, LIKES, DISLIKE, CATEGORY, EMAILID, TIMESTAMP, ISBN) VALUES (?,?,?,?,?,?,?,?,?,?)";
likes=0;
dislikes=0;
String profession=session.getAttribute("profession").toString();
PreparedStatement pre=conn.prepareStatement(myquery);
pre.setString(1, title1);
pre.setString(2, fname);
pre.setString(3, profession);
pre.setString(4, About);
pre.setInt(5, likes);
pre.setInt(6, dislikes);
pre.setString(7, category);
pre.setString(8, emailid);
pre.setTimestamp(9, new java.sql.Timestamp(new java.util.Date().getTime()));
pre.setString(10, isbn);
pre.executeUpdate();
conn.close();
String url=response.encodeRedirectURL("profilr.jsp");
response.sendRedirect(url);
%>