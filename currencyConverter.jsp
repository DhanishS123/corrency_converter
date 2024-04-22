<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
            text-align: center;
        }

        .form {
            max-width: 400px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        #butt {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #butt:hover {
            background-color: #45a049;
        }


    </style>
</head>
<body>
	<form class="form" action="ConverterServlet">
		<h1>THE CURRENCY CONVERTER</h1>
		<label>Enter your Amount in INR </label>
		<input type="number" placeholder="Amount" name="amount" required><br><br>
		<label>Convert </label>
		<select name="currency">
			<option>USD</option>
			<option>EUR</option>
			<option>YEN</option>
			<option>POUND</option>
			<option>RUNE</option>
			<option>AED</option>
			<option>AUD</option>
		</select>
		<button type="submit" id="butt" value="submit">Convert</button>
	</form>
</body>
</html>