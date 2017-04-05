unit-tests:
	docker build -t alarmareloj .
	docker run -t alarmareloj rspec