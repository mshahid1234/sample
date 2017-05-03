#!/bin/bash
RELEASE_BRANCH=$1
echo "Release Branch is $RELEASE_BRANCH"
PROJECT_NAME=`echo "$RELEASE_BRANCH"|awk -F "_" '{print $1}'`
OLD_RELEASE=`echo "$RELEASE_BRANCH"|awk -F "_" '{print $2}'`
echo " PROJECT NAME :: $PROJECT_NAME  and OLD_RELEASE=$OLD_RELEASE"
TEMP=`echo "$OLD_RELEASE" |cut -d '.' -f1,2`
echo "TEMP:: $TEMP"
TWO=`echo "$TEMP"|cut -d '.' -f2`
TWO=$((TWO+1))
echo "last_part =$TWO"
ONE=`echo "$TEMP"|cut -d '.' -f1`
echo "first_part =$ONE"
LATEST_FEATURE=`echo "${PROJECT_NAME}_${ONE}.${TWO}_features"`
echo "$LATEST_FEATURE"
