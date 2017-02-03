#!/bin/bash
tar -xzvf ./exercism_client/exercism.tar.gz -C ./exercism_client/
rm -rf ~/bin
mkdir ~/bin
mv ./exercism_client/exercism ~/bin/
rm ./exercism_client/exercism
export PATH=$HOME/bin:$PATH
exercism configure --key=$EXERCISM_API_KEY -s
exercism configure --dir=./exercises -s
