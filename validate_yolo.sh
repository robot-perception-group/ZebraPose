#!/bin/bash
source ~/yolo/bin/activate

folds=("sc_rp") # multiple folders containing training results in $fold/weights/best.pt
data=("r1_d1") # multiple yaml file names (to be put in data/something.yaml

for fold in "${folds[@]}"; do
  for dataset in "${data[@]}"; do
    python val.py --data data/"$dataset".yaml --exist-ok --weights runs/train/"$fold"/weights/best.pt --imgsz 1920 --save-txt --name "$dataset"_"$fold" > "$dataset"_"$fold".txt 2>&1
  done
done

for fold in "${folds[@]}"; do
  for dataset in "${data[@]}"; do
    python val.py --data data/"$dataset".yaml --exist-ok --weights runs/train/"$fold"/weights/best.pt --imgsz 640 --save-txt --name "$dataset"_"$fold"_640 > "$dataset"_"$fold"_640.txt 2>&1
  done
done
