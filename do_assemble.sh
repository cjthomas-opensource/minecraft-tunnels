#!/bin/bash

if [ ! -d output ]
then
  mkdir output
fi

rm -rf output/CJT_Tunnels
mkdir output/CJT_Tunnels

cp aux/pack.mcmeta-1.18 output/CJT_Tunnels/pack.mcmeta

mkdir output/CJT_Tunnels/data
mkdir output/CJT_Tunnels/data/cjt_tunnels
mkdir output/CJT_Tunnels/data/cjt_tunnels/structures

cp structures/* output/CJT_Tunnels/data/cjt_tunnels/structures/

rm -f packages/CJT_Tunnels.zip
rm -f packages/CJT_Tunnels.tar

cd output
zip -r ../packages/CJT_Tunnels.zip CJT_Tunnels
tar -cvf ../packages/CJT_Tunnels.tar CJT_Tunnels

cd ..
rm -rf output/CJT_Tunnels

# This is the end of the file.
