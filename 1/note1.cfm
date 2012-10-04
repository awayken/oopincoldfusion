<cfsilent>
	<cfset myNote1 = new note1()>
</cfsilent>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Note 1</title>
</head>
<body>
<cfoutput>
	<section>
		<h1>Initial Values</h1>
		<div>publicVariable = #myNote1.publicVariable#</div>
		<div>privateVariable = #myNote1.getPrivateVariable()#</div>
	</section>

	<section>
		<h1>Setting Values</h1>
		<p>We'll try to set the publicVariable to 'Goodbye.' and the privateVariable to 'Tuesday.'</p>

		<cfset myNote1.publicVariable = 'Goodbye.'>
		<div>publicVariable = #myNote1.publicVariable#</div>
		
		<cftry>
			<cfset myNote1.privateVariable = 'Tuesday.'>
			<cfcatch></cfcatch>
		</cftry>
		<div>privateVariable = #myNote1.getPrivateVariable()#</div>
	</section>
</cfoutput>
</body>
</html>