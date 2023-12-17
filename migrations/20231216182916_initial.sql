-- Enable write ahead log
PRAGMA journal_mode = WAL;
-- Enable the enforcement of foreign-keys constraints
PRAGMA foreign_keys = on;
-- Create "links" table
CREATE TABLE `links` (`id` text NOT NULL, `value` text NOT NULL, `type` integer NOT NULL DEFAULT 0, PRIMARY KEY (`id`)) STRICT;