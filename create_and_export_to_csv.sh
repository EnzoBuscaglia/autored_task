#!/bin/bash
sqlite3 autored_task.db < sql/create_table_average_prices.sql
sqlite3 autored_task.db <<EOF
.mode csv
.headers on
.output assets/average_prices.csv
SELECT * FROM average_prices;
.output stdout
EOF
