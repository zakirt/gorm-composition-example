package gorm.composition.example

import gorm.composition.example.model.Address

class User {
	String userName
	String firstName
	String lastName	
	Address homeAddress
	
    static constraints = {
		userName(blank:false, unique:true)
		firstName(blank:false)
		lastName(blank:false)
    }
		
	static embedded = ['homeAddress'] 
}
