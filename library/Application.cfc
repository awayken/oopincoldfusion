/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/library/Application.cfc
* @author  Miles Rausch
* @description Application
*
*/

component output="false" displayname="Application framework for The Library Homepage"  {

	this.name = "The Library Homepage";

	public function onApplicationStart() {
		application.bookService = new beans.BookService( expandPath('data/') );
	}

	public function onRequestStart( required template ) {
		if ( isDefined('url.reinit') ) {
			onApplicationStart();
		}
	}
}