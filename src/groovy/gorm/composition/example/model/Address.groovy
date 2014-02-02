package gorm.composition.example.model

/**
 * @author zakir
 *
 * We'll use this class for our example of composition in GORM.
 * It will be embedded inside User domain class and will serve
 * as one of its properties.
 * Note: making modification to this class while the app
 * is running can cause program failure. The user/_form view
 * will fail to recognize the Address class' properties.
 */
class Address {
	String streetAddress
	String state
	String zipCode
	
	static constraints = {	
		streetAddress(blank:false)
		state(blank:false, inList:['AZ', 'NY', 'PA'])	
		zipCode(blank:false, matches:'[0-9]{5}')
	}
	
	/*
	 * We need this so that the address is properly displayed in views/user/show.gsp
	 */
	String toString() {
		"$streetAddress $state, $zipCode"
	}
}