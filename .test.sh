#!/bin/bash
rm data/*
./scripts/make_times.sh
if [ '454af68bab5189371773440787878250' != `md5 -q data/Letters.1d` ]; then
  exit 1
fi

if [ 'b0639bd4ac2173d91a7c0abb8fa8373d' != `md5 -q data/Numbers.1d` ]; then
  exit 2
fi

if [ '9c96c154c4e0a8a25184145d07151506' != `md5 -q data/Sentences.1d` ]; then
  exit 3
fi

if [ '49586bb5b2ee329206c3682702b9b1ee' != `md5 -q data/Words.1d` ]; then
  exit 4
fi
