 init:
	docker-compose build app 
	make start
	docker-compose run app bundle exec rake db:drop db:create db:migrate

bundle:
	docker-compose run --rm -v $(PWD):/app app bundle install

start:
	docker-compose -f docker-compose.yml up -d redis postgres app

migration:
	docker-compose run app rails g migration $(migration)

migrate:
	docker-compose run app bundle exec rake db:migrate

console:
	docker-compose run app rails c

terminal:
	docker-compose run app /bin/bash

test:
	docker-compose run --rm app bundle exec rspec $(spec)

stop:
	docker-compose down