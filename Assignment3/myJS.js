$(document).ready(function() { 
	Transform();  
});

function Transform() {
	// Download XML data from the server side.
	var xml = getXMLData("createXML.php");

	// Get XSL template at the client side.
	var xsl = getXMLData("GameList.xsl");  // NOTE: put your XSL file name here.

	// Only for Mozilla based browsers.
	xsltProcessor = new XSLTProcessor();
	xsltProcessor.importStylesheet(xsl);
	var result = xsltProcessor.transformToFragment(xml, document);

	$("#car").append(result);	
	// NOTE: where do you want to put the content in. 
	// You can put in a div, or a class, or an id.
}

function getXMLData(url) {
	return $.ajax({type:"GET",
				   url:url,
		           async:false}).responseXML;
}