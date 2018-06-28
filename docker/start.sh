#!/bin/sh

cd /opt/twitter_search
export set BUNDLE_GEMFILE=Gemfile
export set GEM_HOME=/usr/local/bundle

bundle install

# if [ "$RUN_TYPE" = "first_run" ]
# then
    echo "create db *********************************"
    rails db:create
    echo "Running migration *************************"
    rails db:migrate
    echo "Running seed *************************"
    rails db:seed
# elif [ "$RUN_TYPE" = "test_run" ]
#     then
#     rspec spec/models/ --format html --out /opt/book_registry/tmp/rspec_output.html
# fi
# if ! [ "$RUN_TYPE" = "test_run" ]
# then
    rails s -b 0.0.0.0 -p 3000 -e $RAILS_ENV
# fi
