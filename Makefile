.PHONY: build
build:
	@ go build -o app
	@ docker build -t santos0santos0/fc-challenge-go:latest .

.PHONY: run
run:
	@ make build
	@ docker run --rm --name fc-challenge-go santos0santos0/fc-challenge-go:latest

.PHONY: deploy
deploy:
	@ make build
	@ docker push santos0santos0/fc-challenge-go:latest
