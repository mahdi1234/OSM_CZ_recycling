#!/bin/bash
> ./progress.txt
echo "Sberna strediska" >> ./progress.txt
cat ./undefined_recycling_center.json | grep 'centre' | wc -l >> ./progress.txt
echo "Kontejnery" >> ./progress.txt
cat ./undefined_recycling_container.json | grep 'container' | wc -l >> ./progress.txt
echo "Bez typu" >> ./progress.txt
cat ./undefined_recycling_no_type.json | grep 'amenity' | wc -l >> ./progress.txt
