package org.product

import org.util.Status
import org.util.StatusType


class ProductController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    static final String CONTROLLER = "ProductController";
    def productService;
    def productCategoryService;

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        log.info("Product Controller : LIST Request called.");
        def newList = productService.prepareProductList(params.sort, params.order, params.offset, params.max);
        [productInstanceList: newList.get("pList"), productInstanceTotal: newList.get("pCount")]
    }

    def create() {
        log.info("Product Controller : CREATE Request called.");
        [productInstance: new Product(params), categoryInstance: new ProductCategory(params)]
    }

    def save() {
        log.info("Product Controller : SAVE Request called.");
        def productInstance = new Product(params)
        def categoryInstance = ProductCategory.get(params.category.id)
        productInstance.status = Status.findByStatusCode("PROD_ACTIVE");
        if (!productInstance.save(flush: true)) {
            render(view: "create", model:
            [productInstance: productInstance, categoryInstance : categoryInstance])
            return
        }
        productCategoryService.insertProductCategoryClass(productInstance.id, categoryInstance);

        flash.message = message(code: 'default.created.message',
        args: [message(code: 'product.label', default: 'Product'), productInstance.productCode])
        redirect(action: "show", id: productInstance.id, categoryInstance: categoryInstance)
    }

    def show(Long id) {
        log.info("Product Controller : SHOW Request called.");
        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }
        def categoryInstance = productCategoryService.getProductCategory(productInstance);
        [productInstance: productInstance, categoryInstance: categoryInstance]
    }

    def edit(Long id) {
        log.info("Product Controller : EDIT Request called.");

        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }
        def statusList = Status.findAllByStatusType(StatusType.findByStatusTypeCode("PRODUCT_STATUS"));
        def categoryInstance = productCategoryService.getProductCategory(productInstance);
        [productInstance: productInstance, categoryInstance : categoryInstance, statusList : statusList]
    }

    def update(Long id, Long version) {
        log.info("Product Controller : UPDATE Request called.");
        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }
        def categoryInstance = productCategoryService.getProductCategory(productInstance);
        if (version != null) {
            if (productInstance.version > version) {
                productInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                [message(code: 'product.label', default: 'Product')] as Object[],
                "Another user has updated this Product while you were editing")
                render(view: "edit", model: [productInstance: productInstance, categoryInstance : categoryInstance])
                return
            }
        }

        productInstance.properties = params

        if (!productInstance.save(flush: true)) {
            render(view: "edit", model: [productInstance: productInstance, categoryInstance : categoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'product.label', default: 'Product'), productInstance.productCode])
        redirect(action: "show", id: productInstance.id)
    }

//    def delete(Long id) {
//        log.info("Product Controller : LIST Request called.");
//        def productInstance = Product.get(id)
//        if (!productInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), productInstance.productCode])
//            redirect(action: "list")
//            return
//        }
//
//        try {
//            productInstance.delete(flush: true)
//            flash.message = message(code: 'default.deleted.message', args: [message(code: 'product.label', default: 'Product'), productInstance.productCode])
//            redirect(action: "list")
//        }
//        catch (DataIntegrityViolationException e) {
//            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'product.label', default: 'Product'), productInstance.productCode])
//            redirect(action: "show", id: id)
//        }
//    }

    def reports() {

    }
}
