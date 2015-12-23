#!/bin/bash
DIR=`pwd -P`
LANGPAIR='ALL' # Correct this
export PYTHONPATH=$DIR/str2vec/src

python $PYTHONPATH/nn/rae_compute.py\
  MSR_Corpus_parsed/MSRparaphrase_sentences_${LANGPAIR}_train\
  gererated_models/all_words_with_vectors\
  RAE-model.model.gz\
  MSRparaphrase_sentences_${LANGPAIR}_train.vec.txt

python $PYTHONPATH/nn/rae_compute.py\
  MSR_Corpus_parsed/MSRparaphrase_sentences_${LANGPAIR}_test\
  gererated_models/all_words_with_vectors\
  RAE-model.model.gz\
  MSRparaphrase_sentences_${LANGPAIR}_test.vec.txt