-- Copyright (c) 2016-2018  Timescale, Inc. All Rights Reserved.
--
-- This file is licensed under the Apache License,
-- see LICENSE-APACHE at the top level directory.

-- Test that get_git_commit returns text
select pg_typeof(git) from _timescaledb_internal.get_git_commit() AS git;

-- Test that get_os_info returns 3 x text
select pg_typeof(sysname) AS sysname_type,pg_typeof(version) AS version_type,pg_typeof(release) AS release_type from _timescaledb_internal.get_os_info();
