/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/5/BookData.cfc
* @author  Miles Rausch
* @description Book data façade.
*
*/

component output="false" displayname="Book Data Façade"  {

	property name="datasource" type="string";

	public function init( string datasource default='' ){
		setDatasource( datasource );
		return this;
	}

	public numeric function createBook( required struct book ) {
		var bookid = 0;
		// insert into database using values from book.
		// after creation return bookid.
		return bookid;
	}

	public struct function readBook( required numeric bookid ) {
		var book = {};
		var books = queryNew('');
		// query from database for specific book using bookId.
		// return a book object initialized with our query values.
		// book = createObject( 'component', 'Book' ).init( books.Title );
		return book;
	}

	public boolean function updateBook( required struct book ) {
		var success = true;
		// check for valid bookid.
		// update database using values from book where using our bookid.
		// return success boolean.
		return success;
	}

	public boolean function deleteBook( required numeric bookid ) {
		var success = true;
		// delete from database using bookid.
		// return success boolean.
		return success;
	}
}