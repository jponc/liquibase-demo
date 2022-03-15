--liquibase formatted sql
--changeset julian:initial
CREATE TABLE MyTable (
    MyColumn VARCHAR(100) NOT NULL
);
-- rollback DROP TABLE MyTable;
