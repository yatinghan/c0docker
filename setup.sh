wget http://c0.typesafety.net/dist/cc0-v0590-linux4.4.0-bin.tgz
tar -xvzf cc0-*.tgz 
mv cc0 ~/.cc0/
echo 'export PATH=$PATH:~/.cc0/bin' >> ~/.bashrc
rm cc0-*.tgz