package org.util

class UomConversion implements Serializable {

    Uom uom
    Uom uomIdTo
    Date fromDate
    Date thruDate
    BigDecimal conversionFactor

    static mapping = {
        id composite: ['uom', 'uomIdTo','fromDate']
        uomIdTo(column: "uomIdTo")
        version false
    }

    static constraints = {
        fromDate nullable : false
        thruDate nullable : true
        uom nullable : false
        uomIdTo nullable : false
        conversionFactor nullable : false
    }

}
