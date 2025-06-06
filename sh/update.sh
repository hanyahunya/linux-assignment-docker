#!/bin/sh

API_KEY="시크릿키"
LAWD_CD="41173"
SAVE_DIR="/data/xml"

mkdir -p "$SAVE_DIR"

for PAGE in 1 2 3 4
do
  for MONTH in 1 2 3 4 5 6
  do
    curl "https://apis.data.go.kr/1613000/RTMSDataSvcAptTrade/getRTMSDataSvcAptTrade?serviceKey=${API_KEY}&LAWD_CD=${LAWD_CD}&DEAL_YMD=20250${MONTH}&pageNo=${PAGE}&numOfRows=10" -"Accept: application/xml" -o "${SAVE_DIR}/data${MONTH}-${PAGE}.xml"
  done
done

curl "http://linux-java:8080/api/update"