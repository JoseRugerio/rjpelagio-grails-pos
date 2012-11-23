package org.util

class GeneralService {

    javax.sql.DataSource dataSource;
    def order = "asc"
    def offset = 0;
    def max = 10;

    def getConversionList() {
        log.info("GeneralService : Entering GeneralService.getConversionList");
    }
}
