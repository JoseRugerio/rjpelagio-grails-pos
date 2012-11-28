package org.product

import org.springframework.dao.DataIntegrityViolationException

class ProductUomConversionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [productUomConversionInstanceList: ProductUomConversion.list(params), productUomConversionInstanceTotal: ProductUomConversion.count()]
    }

    def create() {
        [productUomConversionInstance: new ProductUomConversion(params)]
    }

    def save() {
        def productUomConversionInstance = new ProductUomConversion(params)
        if (!productUomConversionInstance.save(flush: true)) {
            render(view: "create", model: [productUomConversionInstance: productUomConversionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'productUomConversion.label', default: 'ProductUomConversion'), productUomConversionInstance.id])
        redirect(action: "show", id: productUomConversionInstance.id)
    }

    def show(Long id) {
        def productUomConversionInstance = ProductUomConversion.get(id)
        if (!productUomConversionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productUomConversion.label', default: 'ProductUomConversion'), id])
            redirect(action: "list")
            return
        }

        [productUomConversionInstance: productUomConversionInstance]
    }

    def delete(Long id) {
        def productUomConversionInstance = ProductUomConversion.get(id)
        if (!productUomConversionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productUomConversion.label', default: 'ProductUomConversion'), id])
            redirect(action: "list")
            return
        }

        try {
            productUomConversionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'productUomConversion.label', default: 'ProductUomConversion'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'productUomConversion.label', default: 'ProductUomConversion'), id])
            redirect(action: "show", id: id)
        }
    }
}
