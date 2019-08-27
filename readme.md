sidekiq-unique-error-fail
=========================

demonstrates an issue i encountered with sidekiq

usage
-----

```
# start redis
docker-compose up
# install deps
bundle install
# start sidekiq
sidekiq -r ./demo_worker.rb
# run demo
ruby main.rb
