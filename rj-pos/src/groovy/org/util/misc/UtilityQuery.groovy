package org.util.misc

class UtilityQuery {

    public static final PAGINATION(def paramList) {
        "ORDER BY " + paramList[0] + " " + paramList[1] + " " +
                "LIMIT " + paramList[2] + ", " + paramList[3]
    }
}
