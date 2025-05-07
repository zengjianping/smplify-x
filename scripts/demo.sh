#!/bin/bash

DATA_FOLDER=datas
OUTPUT_FOLDER=datas/results
MODEL_FOLDER=datas/models
VPOSER_FOLDER=datas/vposer/vposer_v1_0

python smplifyx/main.py --config cfg_files/fit_smplx.yaml \
    --data_folder $DATA_FOLDER \
    --output_folder $OUTPUT_FOLDER \
    --visualize=True \
    --model_folder $MODEL_FOLDER \
    --vposer_ckpt $VPOSER_FOLDER \
    --part_segm_fn datas/models/smplx/smplx_parts_segm.pkl

python smplifyx/render_results.py --mesh_fns $OUTPUT_FOLDER/meshes

