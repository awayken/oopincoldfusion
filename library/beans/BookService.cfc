/**
*
* @author  Miles Rausch
* @description Book service layer
*
*/

component output="false" displayname="Book Service Layer" accessors="true" extends="BaseServiceBean" {

	property name="datafolder" type="string";

	public function init( string datafolder default='.' ) {
		setDatafolder( datafolder );
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