# liquibase-demo
Liquibase demo including dryrun and update

# Screencap

```sh
➜  liquibase-demo git:(master) d-c run liquibase-dryrun
Creating liquibase-demo_liquibase-dryrun_run ... done
####################################################
##   _     _             _ _                      ##
##  | |   (_)           (_) |                     ##
##  | |    _  __ _ _   _ _| |__   __ _ ___  ___   ##
##  | |   | |/ _` | | | | | '_ \ / _` / __|/ _ \  ##
##  | |___| | (_| | |_| | | |_) | (_| \__ \  __/  ##
##  \_____/_|\__, |\__,_|_|_.__/ \__,_|___/\___|  ##
##              | |                               ##
##              |_|                               ##
##                                                ##
##  Get documentation at docs.liquibase.com       ##
##  Get certified courses at learn.liquibase.com  ##
##  Free schema change activity reports at        ##
##      https://hub.liquibase.com                 ##
##                                                ##
####################################################
Starting Liquibase at 08:57:35 (version 4.8.0 #1581 built at 2022-02-18 21:43+0000)
Liquibase Version: 4.8.0
Liquibase Community 4.8.0 by Liquibase
--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: changelog.xml
--  Ran at: 3/15/22, 8:57 AM
--  Against: user@172.21.0.3@jdbc:mysql://db:3306/db
--  Liquibase version: 4.8.0
--  *********************************************************************

--  Lock Database
UPDATE db.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'ae68bb465c25 (172.21.0.3)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Changeset db-changelogs/00001_another.sql::another::julian
CREATE TABLE MyAnother (
    MyColumn VARCHAR(100) NOT NULL
);

INSERT INTO db.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('another', 'julian', 'db-changelogs/00001_another.sql', NOW(), 2, '8:b55ebca74f58357b111ce4c2a9efddbe', 'sql', '', 'EXECUTED', NULL, NULL, '4.8.0', '7334655907');

--  Release Database Lock
UPDATE db.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

Liquibase command 'updateSql' was executed successfully.
➜  liquibase-demo git:(master) d-c run liquibase-update
Creating liquibase-demo_liquibase-update_run ... done
####################################################
##   _     _             _ _                      ##
##  | |   (_)           (_) |                     ##
##  | |    _  __ _ _   _ _| |__   __ _ ___  ___   ##
##  | |   | |/ _` | | | | | '_ \ / _` / __|/ _ \  ##
##  | |___| | (_| | |_| | | |_) | (_| \__ \  __/  ##
##  \_____/_|\__, |\__,_|_|_.__/ \__,_|___/\___|  ##
##              | |                               ##
##              |_|                               ##
##                                                ##
##  Get documentation at docs.liquibase.com       ##
##  Get certified courses at learn.liquibase.com  ##
##  Free schema change activity reports at        ##
##      https://hub.liquibase.com                 ##
##                                                ##
####################################################
Starting Liquibase at 08:58:06 (version 4.8.0 #1581 built at 2022-02-18 21:43+0000)
Liquibase Version: 4.8.0
Liquibase Community 4.8.0 by Liquibase
Running Changeset: db-changelogs/00001_another.sql::another::julian
Liquibase command 'update' was executed successfully.
➜  liquibase-demo git:(master) d-c run liquibase-dryrun
Creating liquibase-demo_liquibase-dryrun_run ... done
####################################################
##   _     _             _ _                      ##
##  | |   (_)           (_) |                     ##
##  | |    _  __ _ _   _ _| |__   __ _ ___  ___   ##
##  | |   | |/ _` | | | | | '_ \ / _` / __|/ _ \  ##
##  | |___| | (_| | |_| | | |_) | (_| \__ \  __/  ##
##  \_____/_|\__, |\__,_|_|_.__/ \__,_|___/\___|  ##
##              | |                               ##
##              |_|                               ##
##                                                ##
##  Get documentation at docs.liquibase.com       ##
##  Get certified courses at learn.liquibase.com  ##
##  Free schema change activity reports at        ##
##      https://hub.liquibase.com                 ##
##                                                ##
####################################################
Starting Liquibase at 08:58:12 (version 4.8.0 #1581 built at 2022-02-18 21:43+0000)
Liquibase Version: 4.8.0
Liquibase Community 4.8.0 by Liquibase
--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: changelog.xml
--  Ran at: 3/15/22, 8:58 AM
--  Against: user@172.21.0.3@jdbc:mysql://db:3306/db
--  Liquibase version: 4.8.0
--  *********************************************************************

--  Lock Database
UPDATE db.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'eb4251467566 (172.21.0.3)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Release Database Lock
UPDATE db.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

Liquibase command 'updateSql' was executed successfully.
➜  liquibase-demo git:(master)
```
