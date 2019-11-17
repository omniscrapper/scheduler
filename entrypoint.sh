#!/bin/bash
rake db:migrate
sleep 10
foreman start
