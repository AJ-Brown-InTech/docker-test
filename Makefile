env-build:
	 docker build -t test .
run-env:
	docker run -it test:latest
	