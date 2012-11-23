package org.util

class StatusType {

    String statusTypeCode
    String description

    static constraints = {
        statusTypeCode unique : true, blank : false, size: 5..25;
        description maxSize : 255, blank : false;
    }

    String toString() {
        return this.description;
    }
}
