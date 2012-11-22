package org.product

class ProductCategory {

    String productCategoryCode;
    String description;

    static constraints = {
        productCategoryCode blank: false, unique : true, size : 5..20;
        description maxSize : 255;
    }

    String toString() {
        return this.description;
    }
}
