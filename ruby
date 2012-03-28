echo "Installing Ruby 1.9.3-p125 stable and making it the default Ruby ..."
  rvm install 1.9.3-p125 --with-gcc=clang
  rvm use 1.9.3-p125 --default

echo "Installing Rails to write and run web applications ..."
  gem install rails --no-rdoc --no-ri

echo "Installing Bundler ..."
  gem install bundler

echo "Installing ruby-debug ..." # Source: https://gist.github.com/1333785
  curl -OL http://rubyforge.org/frs/download.php/75414/linecache19-0.5.13.gem
  curl -OL http://rubyforge.org/frs/download.php/75415/ruby-debug-base19-0.11.26.gem
  gem install linecache19-0.5.13.gem ruby-debug-base19-0.11.26.gem -- --with-ruby-include=$rvm_path/src/ruby-1.9.3-p125/
  rm linecache19-0.5.13.gem ruby-debug-base19-0.11.26.gem  

echo "Installing the Heroku gem to interact with the http://heroku.com API ..."
  gem install heroku --no-rdoc --no-ri

echo "Installing the Taps gem to push and pull SQL databases between development, staging, and production environments ..."
  gem install taps --no-rdoc --no-ri

echo "Installing the git_remote_branch gem for fast feature branch creating and deleting ..."
  gem install git_remote_branch --no-rdoc --no-ri

echo "Installing the foreman gem for serving your Rails apps in development mode ..."
  gem install foreman --no-rdoc --no-ri
