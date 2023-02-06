module github.com/HackIllinois/api

replace github.com/arbor-dev/arbor => github.com/HackIllinois/arbor v0.3.1-0.20220625214746-96b56633f2e3

require (
	github.com/arbor-dev/arbor v0.3.0
	github.com/aws/aws-sdk-go v1.33.0
	github.com/dghubble/sling v1.4.0
	github.com/go-playground/validator/v10 v10.10.0
	github.com/golang-jwt/jwt/v4 v4.4.3
	github.com/gorilla/mux v1.6.2
	github.com/justinas/alice v0.0.0-20171023064455-03f45bd4b7da
	github.com/levigross/grequests v0.0.0-20181123014746-f3f67e7783bb
	github.com/prometheus/client_golang v1.12.1
	github.com/thoas/stats v0.0.0-20181218120333-e97827ebd7ca
	go.mongodb.org/mongo-driver v1.9.1
)

require (
	github.com/prometheus/client_model v0.3.0 // indirect
	github.com/prometheus/common v0.37.0 // indirect
	github.com/prometheus/procfs v0.8.0 // indirect
	golang.org/x/crypto v0.0.0-20211215153901-e495a2d5b3d3 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
)

go 1.18
