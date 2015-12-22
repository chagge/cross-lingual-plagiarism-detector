#!/bin/bash
if [ $# -ne 1 ]
then
  echo "Usage: $0 coreNum"
  exit -1
fi

N=8
DIR=`pwd -P`
export PYTHONPATH=$DIR/str2vec/src
mpirun -n $1 python $PYTHONPATH/nn/lbfgstrainer.py\
  -instances gererated_models_and_data/all_sentences_with_frequencies\
  -model RAE-model.model.gz\
  -word_vector gererated_models_and_data/all_words_with_vectors\
  -lambda_reg 0.15\
  -m 200
