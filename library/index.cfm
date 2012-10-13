<!DOCTYPE html>
<html lang="en">
<head>
	<title>Welcome to The Library Homepage</title>
	<link rel="stylesheet" href="css/font-awesome.css">
</head>
<body>
	<section id="welcome">
		<h1>Welcome to The Library</h1>
		<p>Consisting of the finest and most cherished tomes from the entirety of human history, The Library has long been a coveted sanctuary of scholarship and leisure for the enlightened and curious. Attaining membership and then permission to peruse the texts can take half a lifetime. Thankfully, The Library Homepage seeks to make those materials available to the outstanding public, entirely without cost.</p>
		<p>Peruse this source code on <a href="https://github.com/awayken/oopincoldfusion" target="_blank"><i class="icon-github"></i> Github</a>.</p>
	</section>

	<section id="books">
		<h1><i class="icon-book"></i> Our Books</h1>
		<p>Below is a short sample of the books we've made available to The Library Homepage.</p>

		<cfscript>
			books = [];
			arrayAppend( books, createObject( 'component', 'beans.Book' ).init( title='The Bible', author='God' ) );
			arrayAppend( books, createObject( 'component', 'beans.Book' ).init( title='Stonewords', author='Pam Conrad' ) );
			arrayAppend( books, createObject( 'component', 'beans.Book' ).init( title='The Hobbit', author='JRR Tolkien' ) );
			arrayAppend( books, createObject( 'component', 'beans.Book' ).init( title='Object-Oriented Programming in ColdFusion', author='Matt Gifford' ) );
		</cfscript>

		<ul>
		<cfloop array="#books#" index="book">
			<li><cfoutput>#book.getBookSummary()#</cfoutput></li>
		</cfloop>
		</ul>
	</section>
</body>
</html>