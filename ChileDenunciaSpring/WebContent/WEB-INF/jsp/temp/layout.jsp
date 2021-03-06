<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html style="margin-top: -40px;">
<meta charset="UTF-8">
<head>

 <script type="text/javascript">

  $(document).ready(function()
  {
   $("#table").tablesorter();
 });

  </script>
<script>
$(document).ready(function()
{
	$('#search').keyup(function()
	{
		searchTable($(this).val());
	});
});
</script>
<script>
function searchTable(inputVal)
{
	var table = $('#tblData');
	table.find('tr').each(function(index, row)
	{
		var allCells = $(row).find('td');
		if(allCells.length > 0)
		{
			var found = false;
			allCells.each(function(index, td)
			{
				var regExp = new RegExp(inputVal, 'i');
				if(regExp.test($(td).text()))
				{
					found = true;
					return false;
				}
			});
			if(found == true)$(row).show();else $(row).hide();
		}
	});
}
</script>

<script	src="./resources/js/jquery.min.js"></script>
<script	src="./resources/js/jquery.tablesorter.min.js"></script>
<script src="./resources/js/sortable.min.js"></script>
<script type="text/javascript" src="./resources/js/bootstrap.js"></script>
<script src="./resources/js/bootstrap.js"></script>
<script type="text/javascript" src="./resources/js/canvasjs.min.js"></script>
<link rel="stylesheet" href="./resources/js/sortable-theme-dark.css" />
<link rel="icon" href="./resources/img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="./resources/img/favicon.ico" type="image/x-icon">
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<link href="./resources/css/bootstrap.min.css" rel="stylesheet">
<link href="./resources/css/signin.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<style>
.error {
	color: #ff0000;
}

.errorblock{
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding:8px;
	margin:16px;
}
</style>
<script type="text/javascript">

window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer",
	{
		title:{
			text: "Estadistica denuncias , 2014"
		},
		legend:{
			verticalAlign: "center",
			horizontalAlign: "left",
			fontSize: 20,
			fontFamily: "Helvetica"        
		},
		theme: "theme2",
		data: [
		{        
			type: "pie",       
			indexLabelFontFamily: "Garamond",       
			indexLabelFontSize: 20,
			startAngle:-20,      
			showInLegend: true,
			toolTipContent:"{label}",
			dataPoints: [
			{  y: 35.24, legendText:"Accidentes", label: "Accidentes 35.24%" },
			{  y: 8.16, legendText:"Asaltos", label: "Asaltos 8.16%" },
			{  y: 4.67, legendText:"Atencion p�blica", label: "Atencion p�blica 4.67%" },
			{  y: 1.67, legendText:"Basura" , label: "Basura 1.67%"},       
			{  y: 0.98, legendText:"Desorden p�blico" , label: "Desorden p�blico 0.98%"},
			{  y: 2, legendText:"Narcotr�fico" , label: "Narcotr�fico 2%"},
			{  y: 7.28, legendText:"Robo" , label: "Robo 7.28%"},
			{  y: 15, legendText:"Se�al�tica" , label: "Se�al�tica 15%"},
			{  y: 25, legendText:"Vial" , label: "Vial 25%"},
			
			
			
			]
		}
		]
	});




		var chart2 = new CanvasJS.Chart("chartContainer2",
		{
			title:{
				text: "Denuncias mensuales 2014"
			},    
			axisY: {
				title: "Denuncias",
				valueFormatString: "#0,,.",
				suffix: " "
			},
			data: [
			{        
				toolTipContent: "{y} denuncias",
				type: "splineArea",
				markerSize: 5,
				color: "rgba(54,158,173,.7)",
				dataPoints: [
				{x: new Date(2014,0), y: 250},     
				{x: new Date(2014,1), y: 279},     
				{x: new Date(2014,2), y: 338},     
				{x: new Date(2014,3), y: 694},     
				{x: new Date(2014,4), y: 602},     
				{x: new Date(2014,5), y: 239},     
				{x: new Date(2014,6), y: 187},     
				{x: new Date(2014,7), y: 214},     
				{x: new Date(2014,8), y: 728},     
				{x: new Date(2014,9), y: 483},     
				{x: new Date(2014,10), y: 200},     
				{x: new Date(2014,11), y: 284},     
				
				]
			}             
			]
		});
chart.render();
chart2.render();
}
</script>
	

 <script type="text/javascript">

  $(document).ready(function()
  {
   $("#table").tablesorter();
 });

  </script>

</head>
<body>
	<div id="font">
		<img src="./resources/img/fondo.jpg">
	</div>
	<table border="1" cellpadding="0" cellspacing="0" align="center">
		<tr>
			<td><tiles:insertAttribute name="header" /> <tiles:insertAttribute
					name="menu" /></td>
		</tr>
		<tr>
			<td width="100%"><tiles:insertAttribute name="body" /></td>
		</tr>
		<tr>
			<td height="30"><tiles:insertAttribute name="footer" /></td>
		</tr>
	</table>
	<%-- <tiles:insertAttribute name="menuseleccionado" ignore="true" /> --%>
</body>
</html>