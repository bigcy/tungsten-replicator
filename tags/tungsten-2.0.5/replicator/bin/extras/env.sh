#!/bin/bash

if test -z ${REPLICATOR_BIN_DIR}
then
    REPLICATOR_BIN_DIR="$(dirname $0)"
fi

REPLICATOR_HOME_DIR="${REPLICATOR_BIN_DIR}/.."
REPLICATOR_LIB_DIR="${REPLICATOR_HOME_DIR}/lib"
REPLICATOR_CONF=${REPLICATOR_CONF:-${REPLICATOR_HOME_DIR}/conf/replicator.properties}

LOG4J_JAR="${REPLICATOR_LIB_DIR}/log4j-1.2.15.jar"
COMMONS_JAR="${REPLICATOR_LIB_DIR}/tungsten-commons-0.0.1-ALPHA.jar"
REPLICATOR_JAR="${REPLICATOR_LIB_DIR}/tungsten-replicator-0.9-ALPHA.jar"
MYSQL_JAR="${REPLICATOR_LIB_DIR}/mysql-connector-java-5.1.5-bin.jar"
ORACLE_JAR="${REPLICATOR_LIB_DIR}/classes12.jar"

REPLICATOR_CLASSPATH="${LOG4J_JAR}:${COMMONS_JAR}:${REPLICATOR_JAR}:${MYSQL_JAR}:${ORACLE_JAR}"