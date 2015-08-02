#!/bin/bash

GREEN='tput setaf 2'
RESET='tput sgr 0'

EXECUTABLE_NAME=executable

echo "$($GREEN)Building...$($RESET)"
c++ -I $BOOST_INCLUDE_DIR main.cpp -o $EXECUTABLE_NAME -L$BOOST_LIB_DIR/ -lboost_date_time -lboost_system -lboost_thread

echo "$($GREEN)Running...$($RESET)"
./$EXECUTABLE_NAME

echo "$($GREEN)Cleaning...$($RESET)"
rm $EXECUTABLE_NAME
