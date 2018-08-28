#!/bin/bash
err() {
	exit 99
}
trap 'err' 0

set -e
./scripts/make_times.sh
for f in Letters Numbers Sentences Words; do
  if [ ! -f data/${f}.1d ]; then
     exit 99
  fi
done

if [ '454af68bab5189371773440787878250' != `openssl md5 -binary data/Letters.1d | xxd -p` ]; then
  exit 1
fi

if [ 'b0639bd4ac2173d91a7c0abb8fa8373d' != `openssl md5 -binary data/Numbers.1d | xxd -p` ]; then
  exit 2
fi

if [ '9c96c154c4e0a8a25184145d07151506' != `openssl md5 -binary data/Sentences.1d | xxd -p` ]; then
  exit 3
fi

if [ '49586bb5b2ee329206c3682702b9b1ee' != `openssl md5 -binary data/Words.1d | xxd -p` ]; then
  exit 4
fi

echo "OK"

trap : 0

