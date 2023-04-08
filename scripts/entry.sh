#!/bin/bash

cron &
rails server -b 0.0.0.0
