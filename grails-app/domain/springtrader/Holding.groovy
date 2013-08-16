package springtrader

import groovy.transform.ToString


class Holding {
	BigDecimal purchaseprice
	BigDecimal quantity
	Date purchasedate
	Integer accountAccountid
	String quoteSymbol

	static hasMany = [orders: Order]
	static mapping = {
		table 'holding'
//		id column: 'holdingid'
		id generator:'native', params:[sequence:'holding_sequence'], column: 'holdingid'
	}

	    static constraints = {
    }
}
