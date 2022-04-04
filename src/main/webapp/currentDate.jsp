<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.*" %>
 <%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dia Atual</title>
</head>
<body>
	<%!
		String dayOfWeek(){
			String dayWeek = "None";
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			String currentDate = sdf.format(Calendar.getInstance().getTime()).toString();
			GregorianCalendar gc = new GregorianCalendar();
			try {
				Date hoje = sdf.parse(currentDate);
				 gc.setTime(hoje);
		    	switch (gc.get(Calendar.DAY_OF_WEEK)) {
	            case Calendar.SUNDAY:
	                dayWeek = "Domingo";
	                break;
	            case Calendar.MONDAY:
	                dayWeek = "Segunda";
	                break;
	            case Calendar.TUESDAY:
	                dayWeek = "Terça";
	            break;
	            case Calendar.WEDNESDAY:
	                dayWeek = "Quarta";
	                break;
	            case Calendar.THURSDAY:
	                dayWeek = "Quinta";
	                break;
	            case Calendar.FRIDAY:
	                dayWeek = "Sexta";
	                break;
	            case Calendar.SATURDAY:
	                dayWeek = "Sabado";
	        	}
    			return dayWeek;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				return "Error";
			}
		}
	%>
<p>
	Hoje é  <%= (dayOfWeek())%>
</p>
</body>
</html>