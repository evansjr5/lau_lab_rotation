data_dir=/home/james/data/immune_exclusion_data/seperate_sample_data
output_dir=/home/james/data/cNMF_out/per_sample_cnmf

#for file in "$data_dir"/*; do
 #   echo "$file"
  #  sample_prefix=$(basename "$file" | cut -d'/' -f1 | cut -d'.' -f1)
   # sample_name=${sample_prefix}_cNMF
    
    #cnmf prepare "$file" \
    #--output-dir "$output_dir" \
    #--name "$sample_name" \
    #-k 8 9 10 11 14 16 18 19 20 22 25 26 27 28 30 31 33 35 \
    #-n 30 \
    #-j 1
    #echo "Finished"
#done

for dir in "$data_dir"/*; do
    echo "$dir"
    