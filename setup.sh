wget http://c0.typesafety.net/dist/cc0-v718-ubuntu18.04.5-bin.tgz
tar -xvzf cc0-*.tgz 
mv cc0-v718-ubuntu18.04.5-bin ~/.cc0/
echo 'export PATH=$PATH:~/.cc0/bin' >> ~/.bashrc
rm cc0-*.tgz