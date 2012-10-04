/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/1/note2.cfc
* @author  Miles Rausch
* @description Sample CFC for Note 2.
*
*/

component output="false" displayname="Note 2"  {

	public function init(){
		variables.name = 'Miles Rausch';
		return this;
	}


	public void function sayName() {
		writeOutput( '<p>Hello, ' & variables.name );
		return;
	}
	
	
}