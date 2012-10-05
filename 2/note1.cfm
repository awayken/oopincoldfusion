<cfsilent>
	<cfset myNote1 = new note1_part2()>
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
		<div>#myNote1.sayGreeting()#</div>
	</section>
</cfoutput>
</body>
</html>