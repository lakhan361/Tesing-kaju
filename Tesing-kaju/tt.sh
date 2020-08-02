#!/bin/bash


export $(cat .env | grep -i MTP_USER)





cp ossec_default.conf ossec.conf

sed -i -e ";s#FROM_EMAIL#$MTP_USER#g" ossec.conf
sed -i -e ";s#TO_EMAIL#$MTP_USER#g" ossec.conf

