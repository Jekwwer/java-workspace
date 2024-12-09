# Makefile: Simplifies work with the project.

# Use `make` commands to run common tasks more easily
# For example:
#   make build   	-> mvn clean install
#   make test    	-> mvn test
#   make coverage -> mvn verify (to generate JaCoCo coverage)
#   make run     	-> run the main application
#   make clean   	-> mvn clean

.PHONY: build test coverage run clean

build:
	mvn clean install

test:
	mvn test

coverage:
	mvn verify

run:
	mvn exec:java -Dexec.mainClass=com.jekwwer.template.App

clean:
	mvn clean
