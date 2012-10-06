<cfsilent>
	<cfset book = createObject( 'component', 'Book' ).init()>
</cfsilent>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Inheritance</title>
</head>
<body>
<cfoutput>
	<section>
		<h1>Book</h1>
		<cfdump var="#book.getMemento()#" expand="false">
		<cfscript>
			book.setTitle('Object-Oriented Programming in ColdFusion');
			book.setNumberOfPages( 100 );
			writeDump( book.getMemento() );
		</cfscript>
		<cfscript>
			book.setNumberOfPages( 10 );
			writeDump( book.getMemento() );
		</cfscript>
	</section>
</cfoutput>
</body>
</html>