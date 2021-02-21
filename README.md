# go-boilerplate
A starter project with Golang, Echo and Postgres.

Installing the Echo Framework, more details at https://echo.labstack.com/guide
```
go get github.com/labstack/echo/v4
```

Generate a self-signed X.509 TLS certificate
```
cd /cmd/server
go run $GOROOT/src/crypto/tls/generate_cert.go --host localhost
cd /workspace
```
