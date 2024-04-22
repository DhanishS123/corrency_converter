<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <style>
        /* Styles remain unchanged from the previous example */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 20px;
        }
         h1 {
            color: #333;
        }
        
          .form {
            max-width: 400px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 10px;
        }

        #butt {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: flex;
            margin-left:36%;
            margin-top: 10px;
            
        }
        
          #butt:hover {
            background-color: #45a049;
        }
        
        textarea {
            width: 270px;
            height: 72px;
            margin-top: 10px;
            padding: 8px;
            border-radius:10px;
            border: solid gray 2px;
            font-size:20px;
            font-weight:bold;
        }
    </style>
</head>
<body>

	<%
	double Amount = (Double) session.getAttribute("amount");
	String Currency = (String) session.getAttribute("currency");
	double CAmount = (Double) session.getAttribute("convertedAmount");
	
	
	System.out.println(" Amount : "+Amount);
	System.out.println("   Currency : "+Currency);
	System.out.println("   Converted amount is : "+CAmount);
	
	%>
	
	
	<form class="form" action="currencyConverter.jsp">
		<h1>CONVERTED CURRENCY</h1>
		<textarea id="result" readonly><% out.println(Amount); %>INR</textarea>
		<h1>=</h1>
		<textarea id="result" readonly><% out.println(CAmount); %><% out.println(Currency); %></textarea>
		<button type="submit" id="butt" value="submit">Calculate Again</button>
	</form>
	
</body>
</html>