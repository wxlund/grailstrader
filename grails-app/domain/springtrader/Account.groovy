package springtrader

import groovy.transform.ToString

// Note: No id or version.  Automagically handled by GORM.
class Account {
	Date creationdate
	BigDecimal openbalance
	Integer logoutcount
	BigDecimal balance
	Date lastlogin
	Integer logincount

	static hasMany  = [orders: Order]
	static belongsTo = [accountProfile: AccountProfile]
	
	// Legacy databases require minimal mappings like columns that don't match properties
	static mapping = {
		table 'account'
//		id column: 'accountid'
		id generator:'native', params:[sequence:'account_sequence'], column: 'accountid'
	}

	// Very rich validation library	
	// Message codes are automatically generated through grails-app/i18n/messages.properties
	// Validation is automatically enforced - see AccountController
    static constraints = {
		balance (min: 0.0)
    }
}
