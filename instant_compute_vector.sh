#!/bin/bash
DIR=`pwd -P`
export PYTHONPATH=$DIR/str2vec/src

python $PYTHONPATH/nn/rae_compute.py\
  instantTestFile\
  gererated_models_and_data/all_words_with_vectors\
  RAE-model.model.gz\
  instant/instantVecFile.txt