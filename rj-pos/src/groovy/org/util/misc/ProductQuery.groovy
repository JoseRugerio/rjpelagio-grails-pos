package org.util.misc

class ProductQuery {

    public static final GET_PRODUCT_LIST =
    "SELECT prod.id AS productId, prod.product_code AS productCode, " +
    "prod.description AS description, status.description AS status, cat.description AS category " +
    "FROM product prod " +
    "LEFT JOIN product_category_class cls " +
    "ON prod.id = cls.product_id " +
    "LEFT JOIN product_category cat " +
    "ON cat.id = cls.category_id " +
    "LEFT JOIN status " +
    "ON prod.status_id = status.id " +
    "WHERE cls.primary_flag = true "

    public static final GET_PRODUCT_LIST_COUNT = "SELECT COUNT(prod.id) AS rowCount FROM product prod LEFT JOIN product_category_class cls ON prod.id = cls.product_id LEFT JOIN product_category cat ON cat.id = cls.category_id LEFT JOIN status ON prod.status_id = status.id WHERE cls.primary_flag = true"
}
