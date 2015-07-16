#!/bin/bash -e

RIAK_VERSION=$1; shift
ERLANG_VERSION=$1; shift

URL_BASE="http://s3.amazonaws.com/downloads.basho.com/riak"
SHORT_VERSION="${RIAK_VERSION%.*}"

wget $URL_BASE/$SHORT_VERSION/$RIAK_VERSION/riak-$RIAK_VERSION.tar.gz
tar zxvf riak-$RIAK_VERSION.tar.gz
cd riak-$RIAK_VERSION

. ~/otp/$ERLANG_VERSION/activate
make rel
