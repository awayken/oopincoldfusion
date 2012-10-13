/**
*
* @author  Miles Rausch
* @description Page bean
*
*/

component output="false" displayname="Page" accessors="true" {

	property name="content" type="string";
	property name="width" type="numeric";
	property name="height" type="numeric";

	public function init( string content default='', numeric width default=8.5, numeric height default=11 ) {
		setContent( content );
		setWidth( width );
		setHeight( height );

		return this;
	}
}