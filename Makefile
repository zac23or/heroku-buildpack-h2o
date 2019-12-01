build: build-heroku-18

build-cedar-14:
	@echo "Building h2o Docker for cedar-14..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=cedar-14" -w /buildpack heroku/cedar:14 scripts/build_h2o /buildpack/bin/h2o-cedar-14

build-heroku-16:
	@echo "Building nginx in Docker for heroku-16..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-16" -w /buildpack heroku/heroku:16-build scripts/build_h2o /buildpack/bin/h2o-heroku-16

build-heroku-18:
	@echo "Building h2o in Docker for heroku-18..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=heroku-18" -w /buildpack heroku/heroku:18-build scripts/build_h2o /buildpack/bin/h2o-heroku-18

shell:
	@echo "Opening cedar-14 shell..."
	@docker run -v $(shell pwd):/buildpack --rm -it -e "STACK=cedar-14" -e "PORT=5000" -w /buildpack heroku/heroku:16 bash
