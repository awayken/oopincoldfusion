/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/2/note1_part2.cfc
* @author  Miles Rausch
* @description Contains our package function.
*
*/

component output="false" displayname=""  {

	public function init(){
		return this;
	}


	public void function sayGreeting() {
		var note1 = new note1_part1();
		note1.sayHello();
		return;
	}
	
	
}