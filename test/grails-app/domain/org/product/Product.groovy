package org.product

import org.util.Status


class Product {

    String productCode;
    String description;
    Status status;

    static constraints = {
        productCode unique : true, blank: false, size: 5..25;
        description blank: false, maxSize : 255;
        status nullable : false
    }
}
