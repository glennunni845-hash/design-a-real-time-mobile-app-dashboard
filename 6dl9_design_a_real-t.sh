#!/bin/bash

# Data Model for Real-Time Mobile App Dashboard

# Users Table
USERS="
id|int|primary_key
username|varchar|unique
email|varchar|unique
password|varchar
role|varchar"

# App Metrics Table
METRICS="
id|int|primary_key
app_id|int|foreign_key:apps(id)
metric_type|varchar
value|float
timestamp|datetime"

# Apps Table
APPS="
id|int|primary_key
name|varchar
category|varchar
developer|varchar
icon|varchar"

# Dashboard Config Table
DASHBOARD="
id|int|primary_key
user_id|int|foreign_key:users(id)
app_id|int|foreign_key:apps(id)
widget_type|varchar
widget_config|text"

# Real-Time Data Table
REALTIME_DATA="
id|int|primary_key
app_id|int|foreign_key:apps(id)
metric_type|varchar
value|float
timestamp|datetime"

# Indexes
INDEXES="
CREATE INDEX idx_users_username ON users(username);
CREATE INDEX idx_metrics_app_id ON metrics(app_id);
CREATE INDEX idx_apps_name ON apps(name);
CREATE INDEX idx_dashboard_user_id ON dashboard(user_id);
CREATE INDEX idx_realtime_data_app_id ON realtime_data(app_id);"

echo "Data Model for Real-Time Mobile App Dashboard"
echo "-----------------------------------------"
echo "Tables:"
echo "users: $USERS"
echo "metrics: $METRICS"
echo "apps: $APPS"
echo "dashboard: $DASHBOARD"
echo "realtime_data: $REALTIME_DATA"
echo "Indexes:"
echo "$INDEXES"