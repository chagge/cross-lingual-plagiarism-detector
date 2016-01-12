#!/bin/bash
./MSR_corpus_compute_vector.sh
python dynamicPooling.py ALL
python test_on_MSR_corpus.py ALL