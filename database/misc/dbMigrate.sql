--
-- This file is part of the knowhow ERP, a free and open source
-- Enterprise Resource Planning software suite,
-- Copyright (c) 2010-2011 by bring.out doo Sarajevo.
-- It is licensed to you under the Common Public Attribution License
-- version 1.0, the full text of which (including knowhow-specific Exhibits)
-- is available in the file LICENSE_CPAL_bring.out_knowhow.md located at the
-- root directory of this source code archive.
-- By using this software, you agree to be bound by its terms.
--

------------------------------------------------
-- init
-- create table t1
------------------------------------------------
SELECT u2.execute($$

CREATE TABLE IF NOT EXISTS skeleton.t1
(
    p1 character(2),
    d1 date,
    n1 numeric(17,2)
);


$$) WHERE  u2.package_version('skeleton') <= 0;
------------------------------------------------
-- end 
-------------------------------------------------



------------------------------------------------
-- 0.1.0, 0.2.0
-- create table t2
------------------------------------------------
SELECT u2.execute($$

CREATE TABLE IF NOT EXISTS skeleton.t2
(
    p21 character(2),
    d21 date,
    n21 numeric(17,2)
);


$$)
WHERE NOT u2.package_version('skeleton') <= 200;
------------------------------------------------
-- end 
-------------------------------------------------

------------------------------------------------
-- 0.3.0 - 0.3.99
-- create table t3
------------------------------------------------
SELECT u2.execute($$

CREATE TABLE IF NOT EXISTS skeleton.t3
(
    p31 character(2),
    d31 date,
    n31 numeric(17,2)
);


$$)
WHERE NOT u2.package_version('skeleton') <= 399;


------------------------------------------------
-- 0.4.0
-- drop table t1
------------------------------------------------
SELECT u2.execute($$

DROP TABLE skeleton.t1;

$$)
WHERE NOT u2.package_version('skeleton') <= 400;


------------------------------------------------
-- 0.5.x
-- create table t1 v2
------------------------------------------------
SELECT u2.execute($$

CREATE TABLE IF NOT EXISTS skeleton.t1
(
    p1v2 character(10),
    d1v2 date,
    n1v2 numeric(25,2)
);



$$)
WHERE NOT u2.package_version('skeleton') <= 599;
