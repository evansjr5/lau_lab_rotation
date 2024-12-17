data_dir = /home/james/data/immune_exclusion_data/seperate_sample_data

for file in data_dir; do
    name=file
    cnmf prepare /home/james/data/immune_exclusion_data/file \
    --output-dir /home/james/data/cNMF_out \
    --name name \
    -k 8 9 10 11 14 16 18 19 20 22 25 26 27 28 30 31 33 35 \
    -n 30 \
    -j 1
done
    