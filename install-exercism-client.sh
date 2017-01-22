tar -xzvf exercism_linux-64bit.tgz
mkdir ~/bin
mv exercism_client/excercism ~/bin/
export PATH=$HOME/bin:$PATH
echo $(exercism --version)
