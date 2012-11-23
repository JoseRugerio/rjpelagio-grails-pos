package org.util

class UomController {
    static scaffold = true
    def generalService;

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def conversionList(Integer max) {
        log.info("Uom Controller : ConversionList Request called.");
        def newList = generalService.getConversionList();

        [conversionMap : new UomConversion()]
    }
}
