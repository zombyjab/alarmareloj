unit-tests:
	docker build -t alarmareloj .
	docker run -t alarmareloj rspec

cucumber:
	docker build -t alarmareloj .
	docker run -t alarmareloj cucumber