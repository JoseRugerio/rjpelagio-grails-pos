package org.util

class UomController {
    static scaffold = true
    def generalService;

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    //    def conversionList(Integer max) {
    //        log.info("Uom Controller : ConversionList Request called.");
    //        def newList = generalService.getConversionList();
    //
    //        [conversionMap : new UomConversion(), conversionList : UomConversion.list()]
    //    }
    //
    //    def saveConversion() {
    //        log.info("Uom Controller : SAVE Request called.");
    //        def conversionMap = new UomConversion();
    //
    //        conversionMap.uom = Uom.get(params.uom);
    //        conversionMap.uomIdTo = Uom.get(params.uomIdTo);
    //        conversionMap.conversionFactor = new BigDecimal(params.conversionFactor);
    //        conversionMap.fromDate = new java.util.Date();
    //
    //        if (!conversionMap.save(flush: true, insert : true)) {
    //            conversionMap.errors.each { println it }
    //            render(view: "conversionList", model:
    //            [conversionMap: conversionMap, conversionList : UomConversion.list()])
    //            return
    //        }
    //
    //        flash.message = message(code: 'UomConversion.label',
    //            args: [message(code: 'UomConversion.label', default: 'Uom Conversion'), conversionMap.uom])
    //        redirect(action: "conversionList", conversionMap: conversionMap, conversionList : UomConversion.list())
    //    }
}
