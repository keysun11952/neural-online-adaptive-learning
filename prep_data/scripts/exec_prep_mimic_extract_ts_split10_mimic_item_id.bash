#!/usr/bin/env bash

if [[ $1 = "testmode" ]]; then
    test_opt="--testmode"
else
    test_opt=""
fi

cd ../

python prep_mimic_extract_ts_adhoc.py \
        --ignore-lab-data \
        --not-allow-load \
        --multi-split 10 \
        --max-span-day 5 \
        --min-span-day 2 \
        --skip-valid \
        ${test_opt}

cd -