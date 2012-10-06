/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/4/Book.cfc
* @author  Miles Rausch
* @description Book bean.
*
*/

component output="false" displayname="Book" accessors="true" extends="Product" {

	property name="numberOfPages" type="numeric" default=0 setter="false";
	property name="pages" type="array" setter="false";

	public function init( title default='', description default='', numberOfPages default=0 ){
		setNumberOfPages( numberOfPages );
		setPages( numberOfPages );

		super.init( title=title, description=description );
		return this;
	}

	public function setNumberOfPages( required numeric numberOfPages ) {
		variables.numberOfPages = numberOfPages;
		setPages( numberOfPages );
	}

	private function setPages( required numeric numberOfPages ) {
		var i = 0;

		variables.pages = arrayNew( 1 );

		for ( i = 1; i <= numberOfPages; i++ ) {
			arrayAppend( variables.pages, createObject( 'component', 'Page' ).init() );
		}
	}
}