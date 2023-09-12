@echo off

call hexo clean
call hexo g
call cd public
call git init
call git add -A
call git commit -m 'deploy'
call git push -f git@github.com:korin5/korin5.github.io.git main:gh-pages
