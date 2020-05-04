
cd theme
yarn zip
cp ./dist/casper.zip ../tmp/.
cd ../tmp
unzip casper.zip
cd ..
rm -rf content/themes/casper
mkdir content/themes/casper
mv tmp/* content/themes/casper
