<%@page import="java.sql.Date" errorPage="ErrorPage.jsp"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="java.sql.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! String value[]=new String[3]; %>
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
          
         
            if ( !fi.isFormField () )	
            {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName =UUID.randomUUID().toString()+ fi.getName();
           
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
            out.println("Uploaded Filename: " + filePath + 
            fileName + "<br>");
            }
            else {
                String name = fi.getFieldName();
                value[j] = fi.getString();
                j++;
                
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
    <%=value[0]%>
    <%=value[1]%>
    