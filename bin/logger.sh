#!/bin/bash
#################################################################################
# BFAS Standardized Logging Template for bash scripts.
# Includes trap for control-C and option to return usage message.
#
# History:
#   28 Apr 2020 Karl Ruetz
#       Original code written.
#   12 Jun 2020 Karl Ruetz
#       Changed delimiter for log messages from ' : ' to '|'.
#       Removed EXCEPTION and CRITICAL from log levels
#################################################################################

#################################################################################
# Logging Configuration Variables
#
# The following is used by the script to output log data. 
#################################################################################
# Global Variables
dateTime=$(date -u +%Y-%m-%dT%H:%M:%S%z)    # RFC 3339 Date/Time for log entries
dateForFileName=`date -u +%Y%m%d`           # Date to include in file names
timeForFileName=`date -u +%H%M%S`          # Time to include in file names
scriptLogDir="/var/log/${appName}/"      # Directory for log files
scriptLogPath="${scriptLogDir}${appName}-${dateForFileName}.log" # Log filename

# Logging Level configuration works as follows:
# DEBUG - Provides all logging output
# INFO  - Provides all but debug messages
# WARNING  - Provides all but debug and info
# ERROR - Provides all but debug, info and warning
# The default setting is "DEBUG" which will include all logging.
scriptLoggingLevel="DEBUG"
# Check LOG_LEVEL environmental variable.  If set, use it.
if [ ! -z "${LOG_LEVEL}" ]
then
    scriptLoggingLevel="${LOG_LEVEL}"
fi

#################################################################################
# LOGGING
#
# Calls to the logThis() function will determine if an appropriate log file
# exists. If it does, then it will use it, if not, a call to openLog() is made,
# if the log file is created successfully, then it is used.
#
# All log output is comprised of
# [+] An RFC 3339 standard date/time stamp
# [+] The declared level of the log output
# [+] The runtime process ID (PID) of the script
# [+] The log message
#################################################################################
function openLog {
    # Verify the Log Directory exists
    [[ -d ${scriptLogDir} ]] || mkdir -p "${scriptLogDir}"
    if ! [[ "$?" -eq 0 ]]
    then
        echo "${dateTime} - ERROR : UNABLE TO CREATE LOG DIRECTORY - EXITING SCRIPT."
        exit 1
    fi

    echo -e "${dateTime} : PID $$ : INFO : New log file (${scriptLogPath}) created." >> "${scriptLogPath}"

    if ! [[ "$?" -eq 0 ]]
    then
        echo "${dateTime} - ERROR : UNABLE TO OPEN LOG FILE - EXITING SCRIPT."
        exit 1
    fi
}

function logThis() {
    dateTime=$(date +%Y-%m-%dT%H:%M:%S%z)

    if [[ -z "${1}" || -z "${2}" ]]
    then
        echo "${dateTime} - ERROR : LOGGING REQUIRES A MESSAGE AND A PRIORITY, IN THAT ORDER."
        echo "${dateTime} - ERROR : INPUTS WERE: ${1} and ${2}."
        exit 1
    fi

    logMessage="${1}"
    logMessagePriority="${2}"

    logPriorities=(
        'DEBUG::0'
        'INFO::1'
        'WARNING::2' 
        'ERROR::3' 
    )

    logMessagePriorityIndex=-1;
    for index in "${logPriorities[@]}" ; do
        key="${index%%::*}"
        value="${index##*::}"
        if [ "${key}" == "${scriptLoggingLevel}" ]; then
            scriptLoggingIndex=${value}
        fi
        if [ "${key}" == "${logMessagePriority}" ]; then
            logMessagePriorityIndex=${value}
        fi
    done

    if [ ${logMessagePriorityIndex} -lt 0 ]; then
        return 1
    fi
    if [ ${logMessagePriorityIndex} -lt ${scriptLoggingIndex} ]; then
        return 2
    fi

    # No log file, create it.
    if ! [[ -f ${scriptLogPath} ]]
    then
        echo -e "INFO : No log file located, creating new log file (${scriptLogPath})."
        openLog
    fi

    # Write log details to file
    echo -e "${dateTime}|${appName}|[${logMessagePriority}]|${logMessage}" >> "${scriptLogPath}"
    if [[ ${VERBOSE} -eq 1 ]]
    then
        echo -e "${dateTime}|${appName}|[${logMessagePriority}]|${logMessage}"
    fi
}
