/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/2/note1_part1.cfc
* @author  Miles Rausch
* @description Contains our package function.
*
*/

component output="false" displayname="This is Note 1, Part 1"
	hint="This is a hint of things."  {

	public function init(){
		return this;
	}

	package function sayHello() {
		writeOutput('Hello.');
	}
}