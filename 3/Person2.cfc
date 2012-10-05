/**
*
* @file  /Applications/ColdFusion10/cfusion/wwwroot/oopincoldfusion/3/Person2.cfc
* @author  Miles Rausch
* @description Person2 bean
* 
*/

component output="false" displayname="I am the Person class." accessors="true" {

	property name="firstName" type="string";
	property name="lastName" type="string";
	property name="gender" type="string";
	property name="dateOfBirth" type="string";
	property name="hairColor" type="string";

	variables.firstName = '';
	variables.lastName = '';
	variables.gender = '';
	variables.dateOfBirth = '';
	variables.hairColor = '';

	public function init( string firstName default='', string lastName default='', string gender default='', string dateOfBirth default='', string hairColor default='' ){
		setFirstName( firstName );
		setLastName( lastName );
		return this;
	}

	public struct function getMemento() {
		return variables;
	}

	public string function getFullName() {
		return getFirstName() & ' ' & getLastName();
	}
}
