/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/3/Person1.cfc
* @author  Miles Rausch
* @description Person1 bean
* 
*/

component output="false" displayname="I am the Person class."  {

	property string firstName;
	property string lastName;
	property string gender;
	property string dateOfBirth;
	property string hairColor;

	variables.instance = {
		firstName = '',
		lastName = '',
		gender = '',
		dateOfBirth = '',
		hairColor = ''
	};

	public function init( string firstName default='', string lastName default='', string gender default='', string dateOfBirth default='', string hairColor default='' ){
		setFirstName( firstName );
		setLastName( lastName );
		return this;
	}

	public function setFirstName( required string firstName ) {
		variables.instance.firstName = firstName;
	}
	public function setLastName( required string lastName ) {
		variables.instance.lastName = lastName;
	}

	public string function getFirstName() {
		return variables.instance.firstName;
	}
	public string function getLastName() {
		return variables.instance.lastName;
	}

	public struct function getMemento() {
		return variables.instance;
	}

	public string function getFullName() {
		return getFirstName() & ' ' & getLastName();
	}
}
