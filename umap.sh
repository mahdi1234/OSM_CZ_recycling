#!/bin/bash

echo "undefined_recycling_container"
#[out:json][timeout:100];
#{{geocodeArea:Czechia}}->.searchArea;
#nwr[recycling_type=container](area.searchArea)->.all;
#nwr.all[~'recycling:.*'~"."]->.tagged;
#(.all; - .tagged;);
#out center qt;
wget -O undefined_recycling_container.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea(3600051684)-%3E.searchArea%3Bnwr%5Brecycling_type%3Dcontainer%5D(area.searchArea)-%3E.all%3Bnwr.all%5B~%27recycling%3A.*%27~%22.%22%5D-%3E.tagged%3B(.all%3B%20-%20.tagged%3B)%3Bout%20center%20qt%3B'
sleep 300

echo "undefined_recycling_center"
#[out:json][timeout:100];
#{{geocodeArea:Czechia}}->.searchArea;
#nwr[recycling_type=centre](area.searchArea)->.all;
#nwr.all[~'recycling:.*'~"."]->.tagged;
#(.all; - .tagged;);
#out center qt;
wget -O undefined_recycling_center.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea(3600051684)-%3E.searchArea%3Bnwr%5Brecycling_type%3Dcentre%5D(area.searchArea)-%3E.all%3Bnwr.all%5B~%27recycling%3A.*%27~%22.%22%5D-%3E.tagged%3B(.all%3B%20-%20.tagged%3B)%3Bout%20center%20qt%3B'
sleep 300

echo "undefined_recycling_no_type"
#[out:json][timeout:100];
#{{geocodeArea:Czechia}}->.searchArea;
#(
#  node["amenity"="recycling"]["recycling_type"!~".*"](area.searchArea);
#  way["amenity"="recycling"]["recycling_type"!~".*"](area.searchArea);
#  relation["amenity"="recycling"]["recycling_type"!~".*"](area.searchArea);
#);
#out center qt;
wget -O undefined_recycling_no_type.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea(3600051684)-%3E.searchArea%3B(node%5B%22amenity%22%3D%22recycling%22%5D%5B%22recycling_type%22!~%22.*%22%5D(area.searchArea)%3Bway%5B%22amenity%22%3D%22recycling%22%5D%5B%22recycling_type%22!~%22.*%22%5D(area.searchArea)%3Brelation%5B%22amenity%22%3D%22recycling%22%5D%5B%22recycling_type%22!~%22.*%22%5D(area.searchArea)%3B)%3Bout%20center%20qt%3B'

sed -i '/.*timestamp_.*/d' *.json
