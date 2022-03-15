# liquibase-demo
Liquibase demo which includes the following actions: update, dryrun, and rollback.
https://liquibase.org/

# How to use
I've specified the docker platform to run against `linux/arm64` (Apple M1 Chip)

1. run `docker-compose up -d db`. This spins up the database. Please wait a few minutes until the DB initialisation finishes.
2. run `docker-compose run liquibase-update`. This runs all changesets.
3. run `docker-compose run liquibase-rollback`. This runs a rollback count 1 which removes the latest changeset.
4. run `docker-compose run liquibase-dryrun`. This provides you some SQL statements Liquibase will run. This is somehow similar to `terraform plan` so we can detect the db changes Liquibase will do.
5. run `docker-compose run liquibase-update`. Again, this runs all changesets.
6. By now you should have two new tables in your mysql database.


# Liquibase (update/rollback/dryrun)

```sh
➜  liquibase-demo git:(master) ✗ d-c run liquibase-update
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
Starting Liquibase at 09:06:31 (version 4.8.0 #1581 built at 2022-02-18 21:43+0000)
Liquibase Version: 4.8.0
Liquibase Community 4.8.0 by Liquibase
Running Changeset: db-changelogs/00000_initial.sql::initial::julian
Running Changeset: db-changelogs/00001_another.sql::another::julian
Liquibase command 'update' was executed successfully.
➜  liquibase-demo git:(master) ✗ d-c run liquibase-rollback
Creating liquibase-demo_liquibase-rollback_run ... done
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
Starting Liquibase at 09:06:35 (version 4.8.0 #1581 built at 2022-02-18 21:43+0000)
Liquibase Version: 4.8.0
Liquibase Community 4.8.0 by Liquibase
Rolling Back Changeset: db-changelogs/00001_another.sql::another::julian
Liquibase command 'rollbackCount' was executed successfully.
➜  liquibase-demo git:(master) ✗ d-c run liquibase-dryrun
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
Starting Liquibase at 09:06:41 (version 4.8.0 #1581 built at 2022-02-18 21:43+0000)
Liquibase Version: 4.8.0
Liquibase Community 4.8.0 by Liquibase
--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: changelog.xml
--  Ran at: 3/15/22, 9:06 AM
--  Against: user@172.21.0.3@jdbc:mysql://db:3306/db
--  Liquibase version: 4.8.0
--  *********************************************************************

--  Lock Database
UPDATE db.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = '846ea699a6b1 (172.21.0.3)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Changeset db-changelogs/00001_another.sql::another::julian
CREATE TABLE MyAnother (
    MyColumn VARCHAR(100) NOT NULL
);

INSERT INTO db.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('another', 'julian', 'db-changelogs/00001_another.sql', NOW(), 2, '8:b55ebca74f58357b111ce4c2a9efddbe', 'sql', '', 'EXECUTED', NULL, NULL, '4.8.0', '7335202361');

--  Release Database Lock
UPDATE db.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

Liquibase command 'updateSql' was executed successfully.
➜  liquibase-demo git:(master) ✗ d-c run liquibase-update
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
Starting Liquibase at 09:07:08 (version 4.8.0 #1581 built at 2022-02-18 21:43+0000)
Liquibase Version: 4.8.0
Liquibase Community 4.8.0 by Liquibase
Running Changeset: db-changelogs/00001_another.sql::another::julian
Liquibase command 'update' was executed successfully.
➜  liquibase-demo git:(master) ✗
```

# Verifying
```sh
➜  liquibase-demo git:(master) ✗ docker exec -it liquibase-demo_db_1 bash
root@7d677e803da8:/# mysql -uuser -ppass db;
mysql: [Warning] Using a password on the command line interface can be insecure.
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 17
Server version: 8.0.28 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show tables;
+-----------------------+
| Tables_in_db          |
+-----------------------+
| DATABASECHANGELOG     |
| DATABASECHANGELOGLOCK |
| MyAnother             |
| MyTable               |
+-----------------------+
4 rows in set (0.02 sec)

mysql>

```
