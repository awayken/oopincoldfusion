/**
*
* @author  Miles Rausch
* @description Book bean.
*
*/

component output="false" displayname="Book" accessors="true" extends="BaseBean" {

	property name="title" type="string";
	property name="author" type="string";
	property name="numberOfPages" type="numeric" default=0 setter="false";
	property name="pages" type="array" setter="false";

	public function init( title default='', author default='', numberOfPages default=0 ){
		setTitle( title );
		setAuthor( author );
		setNumberOfPages( numberOfPages );
		setPages( numberOfPages );

		return this;
	}

	public string function getBookSummary() {
		return '&ldquo;' & getTitle() & '&rdquo; by ' & getAuthor();
	}

	public void function setNumberOfPages( required numeric numberOfPages ) {
		variables.numberOfPages = numberOfPages;
		setPages( numberOfPages );
		return;
	}

	private void function setPages( required numeric numberOfPages ) {
		var i = 0;

		variables.pages = arrayNew( 1 );

		for ( i = 1; i <= numberOfPages; i++ ) {
			arrayAppend( variables.pages, createObject( 'component', 'Page' ).init() );
		}

		return;
	}
}