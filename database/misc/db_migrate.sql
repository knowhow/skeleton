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

$$) 
WHERE (u2.knowhow_package_version('skeleton') < 1);
------------------------------------------------
-- end 
-------------------------------------------------



------------------------------------------------
-- 0.1.0
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
WHERE (u2.knowhow_package_version('skeleton') < 100);
------------------------------------------------
-- end 
-------------------------------------------------

------------------------------------------------
-- 0.3.17
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
WHERE (u2.knowhow_package_version('skeleton') < 317);
------------------------------------------------
-- end 
-------------------------------------------------


------------------------------------------------
-- 0.4.0
-- drop table t1
------------------------------------------------
SELECT u2.execute($$

DROP TABLE IF EXISTS skeleton.t1;

$$)
WHERE (u2.knowhow_package_version('skeleton') < 400);
------------------------------------------------
-- end 
-------------------------------------------------

------------------------------------------------
-- 0.5.2
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
WHERE (u2.knowhow_package_version('skeleton') < 502);
------------------------------------------------
-- end 
-------------------------------------------------


------------------------------------------------
-- 1.1.0
-- alter table t2
------------------------------------------------
SELECT u2.execute($$

ALTER TABLE skeleton.t2
            ADD notes TEXT;
$$) 
WHERE  (u2.knowhow_package_version('skeleton') < 10100);
-----------------------------------------------
-- end 
-------------------------------------------------

------------------------------------------------
-- 2.1.0
-- alter table t1 - add notes
------------------------------------------------
SELECT u2.execute($$

ALTER TABLE skeleton.t1
            ADD notes TEXT;
$$) 
WHERE  (u2.knowhow_package_version('skeleton') < 20100);
-----------------------------------------------
-- end 
-------------------------------------------------



-- ##########################################
-- na kraju setujemo novu verziju iz pkghead
SELECT u2.set_knowhow_package_version('skeleton');
-- ##########################################
