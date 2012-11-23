package org.util

class Status {

    String statusCode;
    String description;
    StatusType statusType;

    static constraints = {
        statusCode unique : true, blank : false, size: 5..25;
        description maxSize : 255, blank : false;
    }

    String toString() {
        return this.description;
    }
}
