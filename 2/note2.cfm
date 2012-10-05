<!DOCTYPE html>
<html lang="en">
<head>
	<title>Note 2</title>
</head>
<body>
<cfoutput>
	<section>
		<h1>getMetaData</h1>
		<cfset myNote2 = new note2()>
		<cfdump var="#getMetaData( myNote2 )#">
	</section>
	<section>
		<h1>getComponentMetaData</h1>
		<cfdump var="#getComponentMetaData( 'note2' )#">
	</section>
</cfoutput>
</body>
</html>