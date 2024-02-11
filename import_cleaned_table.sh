#!/bin/bash
sqlite3 autored_task.db ".mode csv" ".import assets/cleaned_autos.csv cleaned_autos"
