#! /bin/bash
cp source.rb before.rb
bundler exec rubocop --autocorrect --config=.style-guide.yml before.rb

cp source.rb after.rb
bundler exec rubocop --autocorrect after.rb