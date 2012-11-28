package org.product

import org.util.Uom

class ProductUomConversion implements Serializable {

    Product product
    Uom uom
    Uom uomTo
    Double conversionFactor

    static mapping = {
        id composite: ['product', 'uom', 'uomTo']
        product column: "product_id"
        uom column : "uom"
        uomTo column : "uomTo"
    }

    static constraints = {
        product nullable : false
        uom nullable : false
        uomTo nullable : false
        conversionFactor nullable : false
    }
}
