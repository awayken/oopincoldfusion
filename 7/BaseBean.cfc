/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/7/BaseBean.cfc
* @author  Miles Rausch
* @description Base bean
*
*/

component output="false" displayname="Base bean"  {

	public function init(){
		return this;
	}

	public function getMemento() {
		return variables;
	}

	public function dumpMemento() {
		writeDump( variables );
		return;
	}
}