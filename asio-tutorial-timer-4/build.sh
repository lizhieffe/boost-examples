#!/bin/bash

c++ -I $BOOST_INCLUDE_DIR main.cpp -o executable -L$BOOST_LIB_DIR/ -lboost_date_time -lboost_system
