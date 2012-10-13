/**
*
* @author  Miles Rausch
* @description Base bean
*
*/

component output="false" displayname="Base bean" accessors="true" {

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