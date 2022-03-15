--liquibase formatted sql
--changeset julian:another
CREATE TABLE MyAnother (
    MyColumn VARCHAR(100) NOT NULL
);
