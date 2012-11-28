package org.product

class ProductFeature {

    Product product
    String color
    String brand
    String size
    byte[] picture
    org.util.Uom uom

    static constraints = {
        product nullable : false
        color nullable : true
        brand nullable : true
        size nullable : true
        picture nullable : true, maxSize : 1073741824
        uom nullable : false
    }

    static mapping = {
        product column: "product_id"
        picture sqlType: "blob"
        version false
    }
}
