data_dir=/home/james/data/immune_exclusion_data/seperate_sample_data
output_dir=/home/james/data/cNMF_out/per_sample_cnmf

for file in "$data_dir"/*; do
    echo "$file"
    sample_prefix=$(basename "$file" | cut -d'/' -f1 | cut -d'.' -f1)
    sample_name=${sample_prefix}_cNMF
    
    cnmf prepare "$file" \
    --output-dir "$output_dir" \
    --name "$sample_name" \
    -k 10 \
    -n 30 \
    -j 1

    cnmf factorize \
    --output-dir "$output_dir" \
    --name "$sample_name" \
    --n-jobs 1 \
    --worker-index 0

    cnmf combine \
    --output-dir "$output_dir" \
    --name "$sample_name" \
    -k 10

    cnmf k_selection_plot \
    --output-dir "$output_dir" \
    --name "$sample_name"

    echo "Finished prepare, foactorize, combine, and k-selection plot"

done
