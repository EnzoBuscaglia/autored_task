#!/bin/bash
sqlite3 autored_task.db < sql/initialize_structured_db.sql
sqlite3 autored_task.db ".mode csv" ".import assets/autos.csv autos"
