/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/6/BookGateway.cfc
* @author  Miles Rausch
* @description Gateway for the Book Bean.
*
*/

component output="false" displayname="Book Gateway"  {

	property name="datasource" type="string";

	public function init( string datasource default='' ) {
		setDatasource( datasource );
		return this;
	}

	public function readBooks() {
		var books = queryNew('');
		// straight up, get all books.
		return books;
	}
}