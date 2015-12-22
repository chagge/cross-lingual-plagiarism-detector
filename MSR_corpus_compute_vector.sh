#!/bin/bash
DIR=`pwd -P`
LANGPAIR='EE' # Correct this
export PYTHONPATH=$DIR/str2vec/src

python $PYTHONPATH/nn/rae_compute.py\
  MSR_Corpus_parsed/MSRparaphrase_sentences_EE_train\
  gererated_models/all_words_with_vectors\
  RAE-model.model.gz\
  MSRparaphrase_sentences_ALL_train.vec.txt

python $PYTHONPATH/nn/rae_compute.py\
  MSR_Corpus_parsed/MSRparaphrase_sentences_EE_test\
  gererated_models/all_words_with_vectors\
  RAE-model.model.gz\
  MSRparaphrase_sentences_EE_test.vec.txt