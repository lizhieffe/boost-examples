#!/bin/bash

c++ -I $BOOST_INCLUDE_DIR example.cpp -o example -L$BOOST_LIB_DIR/ -lboost_regex
