package springtrader

import groovy.transform.ToString


class AccountProfile {
	String address
	String passwd
	String userid
	String email
	String creditcard
	String fullname
	String authtoken

	static hasMany = [accounts: Account]
	static mapping = {
		table 'accountprofile'
//		id column: 'profileid'
		id generator:'native', params:[sequence:'accountprofile_sequence'], column: 'profileid'
	}
					
    static constraints = {
    }
}