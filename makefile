PROJECT_DIR=github.com/hieuphq/goa-example
PROJECT_ROOT=${GOPATH}/src/${PROJECT_DIR}
PROJECT_NAME=iotserver

bin-${PROJECT_NAME}:
	go build -o bin/${PROJECT_NAME}

# Dev
dev: bin-${PROJECT_NAME}
	ENV=DEV bin/${PROJECT_NAME}

# gen code
# GOA
gen-goa-init:
	goagen bootstrap -d ${PROJECT_DIR}/design

gen-goa-app:
	goagen app -d ${PROJECT_DIR}/design