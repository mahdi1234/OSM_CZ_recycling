#!/bin/bash
echo "undefined_recycling_container"
wget -O undefined_recycling_container.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea(3600051684)-%3E.searchArea%3Bnwr%5Bamenity%3Drecycling%5D%5Brecycling_type%3Dcontainer%5D(area.searchArea)-%3E.all%3Bnwr.all%5B~%27recycling%3A.*%27~%22.%22%5D-%3E.tagged%3B(.all%3B%20-%20.tagged%3B)%3Bout%3B'
sleep 300
echo "undefined_recycling_center"
wget -O undefined_recycling_center.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea(3600051684)-%3E.searchArea%3Bnwr%5Bamenity%3Drecycling%5D%5Brecycling_type%3Dcentre%5D(area.searchArea)-%3E.all%3Bnwr.all%5B~%27recycling%3A.*%27~%22.%22%5D-%3E.tagged%3B(.all%3B%20-%20.tagged%3B)%3Bout%3B'
echo "undefined_recycling_no_type"
sleep 300
wget -O undefined_recycling_no_type.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A100%5D%3Barea(3600051684)-%3E.searchArea%3B(node%5B%22amenity%22%3D%22recycling%22%5D%5B%22recycling_type%22!%3D%22centre%22%5D%5B%22recycling_type%22!%3D%22container%22%5D%5B%22recycling_type%22!%3D%22underground%22%5D(area.searchArea)%3Bway%5B%22amenity%22%3D%22recycling%22%5D%5B%22recycling_type%22!%3D%22centre%22%5D%5B%22recycling_type%22!%3D%22container%22%5D%5B%22recycling_type%22!%3D%22underground%22%5D(area.searchArea)%3Brelation%5B%22amenity%22%3D%22recycling%22%5D%5B%22recycling_type%22!%3D%22centre%22%5D%5B%22recycling_type%22!%3D%22container%22%5D%5B%22recycling_type%22!%3D%22underground%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
