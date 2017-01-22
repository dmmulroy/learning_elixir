#!/bin/bash
tar -xzvf ./exercism_client/exercism-linux-64bit.tgz -C ./exercism_client/
rm -rf ~/bin
mkdir ~/bin
mv ./exercism_client/exercism ~/bin/
rm ./exercism_client/exercism
export PATH=$HOME/bin:$PATH
exercism --version
