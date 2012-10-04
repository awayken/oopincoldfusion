<!DOCTYPE html>
<html lang="en">
<head>
	<title>Note 2</title>
</head>
<body>
<cfoutput>
	<section>
		<h1><code>cfinvoke</code> Method</h1>
		<pre><code>&lt;cfinvoke method="sayName" component="note2"&gt;</code></pre>
		<cftry>
			<cfinvoke method="sayName" component="note2">
			<cfcatch>
				<p>#cfcatch.message#</p>
			</cfcatch>
		</cftry>
	</section>
	<section>
		<h1><code>createObject</code> Method</h1>
		<pre><code>&lt;cfset myNote2Object = createObject( 'component', 'note2' )&gt;</code></pre>
		<cftry>
			<cfset myNote2Object = createObject( 'component', 'note2' )>
			#myNote2Object.sayName()#
			<cfcatch>
				<p>#cfcatch.message#</p>
			</cfcatch>
		</cftry>
	</section>
	<section>
		<h1><code>new</code> Keyword Method</h1>
		<pre><code>&lt;cfset myNote2New = new note2()&gt;</code></pre>
		<cftry>
			<cfset myNote2New = new note2()>
			#myNote2New.sayName()#
			<cfcatch>
				<p>#cfcatch.message#</p>
			</cfcatch>
		</cftry>
	</section>
</cfoutput>
</body>
</html>