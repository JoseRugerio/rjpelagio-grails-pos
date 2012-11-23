package org.product


class ProductCategoryClass implements Serializable {

    Product product
    ProductCategory category
    Date fromDate
    Date thruDate
    boolean primaryFlag = true

    static ProductCategoryClass get(long productId, long categoryId, Date fromDate) {
        find 'from Product where ' +
                'product.id=:productId and ' +
                'category.id=:categoryId and ' +
                'fromDate=:fromDate',
                [productId: productId, categoryId: categoryId, fromDate: fromDate]
    }

    static mapping = {
        id composite: ['product', 'category', 'fromDate']
        product(column: "product_id")
        category(column: "category_id")
        version false
    }

    static constraints = {
        fromDate nullable : false
        thruDate nullable : true
        product nullable : false
        category nullable : false
    }
}
