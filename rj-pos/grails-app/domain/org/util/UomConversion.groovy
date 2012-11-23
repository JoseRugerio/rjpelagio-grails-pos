package org.util

class UomConversion implements Serializable {

    Uom uom
    Date fromDate
    Date thruDate
    BigDecimal conversionFactor

    static mapping = {
        id composite: ['uom', 'fromDate']
        version false
    }

    static constraints = {
        fromDate nullable : false
        thruDate nullable : true
        uom nullable : false
        conversionFactor nullable : false
    }

}
