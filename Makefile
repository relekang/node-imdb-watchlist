parse: node_modules
	bailey ./ ./ --node

watch: node_modules
	bailey ./ ./ --node --watch

test: parse
	istanbul cover node_modules/.bin/_mocha

coveralls: test
	node node_modules/.bin/coveralls < coverage/lcov.info

node_modules:
	npm install

.PHONY: parse watch test coveralls
