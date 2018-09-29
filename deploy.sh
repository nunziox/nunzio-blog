bundle exec jekyll build

scp -i /Users/nunzio.meli/.ssh/my/my_rsa -r _site/* nunziomeli.org:~
