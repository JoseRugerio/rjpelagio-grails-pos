

package org.product

import java.sql.Connection
import java.sql.ResultSet
import java.sql.Statement

import org.util.misc.ProductQuery
import org.util.misc.UtilityQuery


class ProductService {

    javax.sql.DataSource dataSource;
    def field = "productCode"
    def order = "asc"
    def offset = 0;
    def max = 10;

    def prepareProductList(def pField, def pOrder, def pOff, def pMax) {
        log.info("ProductService : Entering ProductService.prepareProductList");
        pField==null ? pField = field : pField
        pOrder==null ? pOrder = order : pOrder
        pOff==null ? pOff = offset : pOff
        pMax==null ? pMax = max : pMax
        def param = [pField, pOrder, pOff, pMax];

        def query = ProductQuery.GET_PRODUCT_LIST + UtilityQuery.PAGINATION(param)
        def queryCount = ProductQuery.GET_PRODUCT_LIST_COUNT
        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);
        def prodList =[];
        while(resultSet.next()) {
            prodList << [
                        'productId':resultSet.getInt('productId'),
                        'productCode' :resultSet.getString('productCode'),
                        'description'  :resultSet.getString('description'),
                        'status' :resultSet.getString('status'),
                        'category' :resultSet.getString('category')
                    ];
        }

        resultSet = statement.executeQuery(queryCount);
        def listCount = 0;
        if(resultSet.next()) {listCount = resultSet.getInt('rowCount') }
        def map = [pList : prodList, pCount : listCount]

        resultSet.close()
        statement.close()
        connection.close()
        log.info("ProductService : Exiting ProductService.prepareProductList");
        return map
    }
}