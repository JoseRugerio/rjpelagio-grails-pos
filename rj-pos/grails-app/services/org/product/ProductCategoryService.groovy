package org.product

import org.springframework.transaction.annotation.Transactional

class ProductCategoryService {

    @Transactional
    def ProductCategory getProductCategory(product){
        log.info("ProductCategoryService : Entering ProductCategoryService.getProductCategory");
        def category = new ProductCategory();
        if(product != null){
            def prodClass = ProductCategoryClass.find('from ProductCategoryClass where ' +
                    'product_id=:product and ' +
                    'primaryFlag=:flag',
                    [product: product, flag : true])

            if (prodClass != null) {
                log.info("ProductCategoryService : Exiting ProductCategoryService.getProductCategory");
                return prodClass.category;
            }
        }
        log.info("ProductCategoryService : Exiting ProductCategoryService.getProductCategory");
        return null;
    }

    @Transactional
    def insertProductCategoryClass(params, productId, category){
        log.info("ProductCategoryService : Entering ProductCategoryService.insertProductCategoryClass");
        def product = Product.get(productId);
        if (product != null){
            def prodCategoryClass = new ProductCategoryClass();
            prodCategoryClass.fromDate = new java.util.Date();
            prodCategoryClass.product = product;
            prodCategoryClass.category = category;
            prodCategoryClass.primaryFlag = true;
            if(!prodCategoryClass.save(insert  : true)){
                prodCategoryClass.errors.each { println it }
            }
        }
        log.info("ProductCategoryService : Exiting ProductCategoryService.insertProductCategoryClass");
    }
}
