<cfsilent>
	<cfset person1 = createObject( 'component', 'Person1' ).init()>
	<cfset person2 = createObject( 'component', 'Person2' ).init()>
</cfsilent>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Person bean</title>
</head>
<body>
<cfoutput>
	<section>
		<h1>Person 1</h1>
		<cfdump var="#person1.getMemento()#" expand="false">
		<cfscript>
			person1.setFirstName('Miles');
			person1.setLastName('Rausch');
		</cfscript>
		<div>Full name: #person1.getFullName()#</div>
		<cfdump var="#person1.getMemento()#" expand="false">
	</section>

	<section>
		<h1>Person 2</h1>
		<cfdump var="#person2.getMemento()#" expand="false">
		<cfscript>
			person2.setFirstName('Miles');
			person2.setLastName('Rausch');
		</cfscript>
		<div>Full name: #person2.getFullName()#</div>
		<cfdump var="#person2.getMemento()#" expand="false">
	</section>
</cfoutput>
</body>
</html>