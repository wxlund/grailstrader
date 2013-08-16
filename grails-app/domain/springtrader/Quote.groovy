package springtrader

import groovy.transform.ToString


class Quote {
	BigDecimal low
	BigDecimal open1
	BigDecimal volume
	BigDecimal price
	BigDecimal high
	String companyName
	String symbol
	BigDecimal change1
	
	static mapping = {
		table 'quote'
//		id column: 'quoteid'
		id generator:'native', params:[sequence:'quote_sequence'], column: 'quoteid'
		low column: 'low', sqlType: 'Decimal', scale: 2
		open1 column: 'open1', sqlType: 'Decimal',  scale: 2
		volume column: 'volume', sqlType: 'Decimal', scale: 2
		price column: 'price', sqlType: 'Decimal',  scale: 2
		high column: 'high', sqlType: 'Decimal',  scale: 2
		companyName column: 'companyname'
		symbol column: 'symbol'
		change1 column: 'change1', sqlType: 'Decimal', scale: 2
	
	}
	static constraints = {
		low()
		open1()
		volume()
		price()
		high()
		companyName()
		symbol()
		change1()
	}

}
