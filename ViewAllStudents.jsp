<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="test.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin - Student List</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('https://i.pinimg.com/474x/8e/66/cd/8e66cd2ab3becef156432cb95413b15a.jpg') no-repeat center center fixed;
            background-size: cover;
            text-align: center;
            margin: 50px;
            color: white;
        }
        .container {
           background: linear-gradient(to bottom, black, transparent);
           
           
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            display: inline-block;
            color: #222;
            max-width: 700px;
        }
        h1 {
            color: #2ecc71;
            font-size: 28px;
            font-weight: bold;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
            color: white;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        .view-link {
            text-decoration: none;
            color: #e74c3c;
            font-weight: bold;
        }
        .view-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <% 
            AdminBean ab = (AdminBean) session.getAttribute("abean");
            ArrayList<StudentBean> al = (ArrayList<StudentBean>) session.getAttribute("alist");
        %>
        <h1>📋 Admin Panel - Student List</h1>
        <p><strong>Admin:</strong> <%= ab.getfName() %></p>
        
        <% if(al.size() == 0) { %>
            <p>No students available...</p>
        <% } else { %>
            <table>
                <tr>
                    <th>Roll No</th>
                    <th>Name</th>
                    <th>Course</th>
                    <th>Total Marks</th>
                    <th>Percentage</th>
                    <th>Result</th>
                    <th>Action</th>
                </tr>
                <% for(StudentBean sb : al) { %>
                    <tr>
                        <td><%= sb.getRollNo() %></td>
                        <td><%= sb.getName() %></td>
                        <td><%= sb.getCourse() %></td>
                        <td><%= sb.getTotMarks() %></td>
                        <td><%= sb.getPer() %>%</td>
                        <td><%= sb.getResult() %></td>
                        <td><a href='viewm?rollno=<%= sb.getRollNo() %>' class='view-link'>View Marks</a></td>
                    </tr>
                <% } %>
            </table>
        <% } %>
    </div>
</body>
</html>
