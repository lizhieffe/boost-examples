#!/bin/bash

c++ -I $BOOST_INCLUDE_DIR example.cpp -o example -L$BOOST_LIB_DIR/ -lboost_regex
# c++ -I /Users/zhili/source/boost_1_58_0 example.cpp -o example -L/Users/zhili/source/boost_1_58_0/stage/lib/ -lboost_regex
