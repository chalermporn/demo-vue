#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn build --report

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:chalermporn/chalermporn.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/chalermporn/demo-vue.git master:gh-pages

cd -