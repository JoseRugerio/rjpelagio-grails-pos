package org.util

class Uom {

    String uomCode
    String abbr
    String description

    static constraints = {
        uomCode unique : true, blank : false, size: 5..25;
        abbr unique : true, blank : false
        description maxSize : 255, blank : false;
    }

    String toString() {
        return this.description + " - " + this.abbr;
    }
}
