### goa-example
Example using goa design framework

### How to setup a project
- Install go ( > 1.11 )
- Install `goa` and `goagen`:
```
    go get -u github.com/goadesign/goa/...
```

- Make a new `design.go` file inner `design` folder
```
    mkdir design; touch design/design.go
```

- Take `design.go` content at [goa guide](https://goa.design/learn/guide/)
- Use `goagen` tool to generate all the boilerplate code. Replace `${PROJECT_DIR}` variable by your project location
```
    goagen bootstrap -d ${PROJECT_DIR}/design
```
- Build your first api server
```
    go build -o <your_app_name>
```
- Run your api server
```
    ./<your_app_name>
```