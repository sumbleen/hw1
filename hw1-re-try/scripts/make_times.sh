#!/bin/bash
echo "hello"
cat stimuli.log | grep Words | sed 's/ .*//' > data/Words
cat stimuli.log | grep Sentences | sed 's/ .*//' > data/Sentences
cat stimuli.log | grep Letters | sed 's/ .*//' > data/Letters
cat stimuli.log | grep Numbers | sed 's/ .*//' > data/Numbers