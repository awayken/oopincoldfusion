/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/7/BookService.cfc
* @author  Miles Rausch
* @description Book service layer
*
*/

component output="false" displayname="Book Service Layer" extends="BaseServiceBean" {

	property name="datasource" type="string";

	public function init( string datasource default='' ) {
		setDatasource( datasource );
		// create Data object
		// create Gateway object
		return this;
	}

	// saveBook - calls save method in Data object

	// read - calls read method in Data object

	// delete - calls delete method in Data object

	// readBooks - calls read method from Gateway object

	// filter methods - call filter methods from Gateway object
}