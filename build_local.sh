rm -rf ../cv/*
rm -rf public/
zola build
cp -r public/* ../cv/
