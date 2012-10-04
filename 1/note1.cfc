/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/1/note1.cfc
* @author  Miles Rausch
* @description Sample CFC for Note 1.
*
*/

component output="false" displayname="Note 1"  {

	public function init(){
		this.publicVariable = 'Hello.';
		variables.privateVariable = 'Monday.';

		return this;
	}

	public function getPrivateVariable() {
		return variables.privateVariable;
	}
}