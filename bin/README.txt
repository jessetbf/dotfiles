Documentation For Installing and Using WebGetDB

These instructions should be compatible with any UNIX based system with the 
bash shell installed. For Windows 10 machines, you will need to activate the 
Windows Service for Linux (WSL) and install Ubuntu.

Requirements:
The following will need to be installed on your system:
    mysqldump:
        This installed with MAMP so you shouldn't need to install.
        If you do not have MAMP installed, you can run:
            brew install mysql-client
    jq:
        brew install jq

Installation:
1.  If it does not already exist, create a directory in your home directory 
    named bin.
        a. mkdir ${HOME}/bin

2. (Optional) If it does not already exist, create a directory in your home 
    directory named dumps.
        a. mkdir ${HOME}/dumps

3.  Copy the following files to your ${HOME}/bin directory:
        WebGetDB
        logger.sh

4.  Create a /var/log/WebGetDB directory.
        a.  sudo mkdir /var/log/WebGetDB
        b.  chmod 777 /var/log/WebGetDB

Usage:
The easiest usage is:
    WebGetDB -d "<database>"
        Where <database> = the name of the database you want to back up.
    
    Example:
        WebGetDB -d "nkut95"
            This will backup the nkut95 database to ${HOME}/dumps/nkut.sql

    NOTES:
        Assumes the good-morning script is used to authenticate and the 
        "eb-cli" profile is in ${HOME}/.aws/credentials file.
        Assumes the ${HOME}/dumps directory exists.

Full usage:
    WebGetDB    [-h|--help] (Returns usage)
                -d|--backupDB <backupDB> (Database to be backed up)
                [-p|--profile] <profile> (AWS profile for DB Account)
                [-o|--outputDir <path>] (Local directory for backup file)"

    Examples:
        WebGetDB -d "bfas94c" -p "AWS_WebDeveloper" -o "/tmp"
            This will backup the bfas94c database to /tmp/bfas.sql.

        NOTES:
            Uses the raw profile name created when gimme-aws-creds is used 
            without the good-morning script.