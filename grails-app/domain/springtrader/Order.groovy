package springtrader

import groovy.transform.ToString


class Order {
	BigDecimal orderfee
	Date completiondate
	String ordertype
	String orderstatus
	BigDecimal price
	BigDecimal quantity
	Date opendate
	Quote quote

	static belongsTo = [account: Account]
	static hasOne = [holding: Holding]
	
	static mapping = {
		table 'orders'
//		id column: 'orderid'
		id generator:'native', params:[sequence:'order_sequence'], column: 'orderid'
	}
	
    static constraints = {
    }
}
