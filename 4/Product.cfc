/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/4/Product.cfc
* @author  Miles Rausch
* @description Product bean
*
*/

component output="false" displayname="Product" accessors="true"  {

	property name="title" type="string";
	property name="description" type="string";

	public function init( title default='', description default='' ){
		setTitle( title );
		setDescription( description );

		return this;
	}

	public function getMemento() {
		return variables;
	}
}