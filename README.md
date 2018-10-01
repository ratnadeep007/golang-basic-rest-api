# Golang API REST Server
Basic CRUD operations in Goland exposing REST API and using MySQL database.

#### Dependencies
- mux
- mysql-driver

#### Running
Easiest way to run is using docker. Just replace the environment varibales in `docker-compose.yml` file

      MYSQL_ROOT_PASSWORD: "xxxx"
      MYSQL_USER: "xxxx"
      MYSQL_PASSWORD: "xxx"

to

      MYSQL_ROOT_PASSWORD: "mysecretpassword"
      MYSQL_USER: "golanguser"
      MYSQL_PASSWORD: "secretpassword"

and change same in `main.go` file

      func main() {
	      a := App{}
	      a.Initialize("xxxx", "xxxx", "gotest")
	      a.Run(":5000")
      }

to

      func main() {
	      a := App{}
	      a.Initialize("golanguser", "secretpassword", "gotest")
	      a.Run(":5000")
      }

and then run `docker-compose up`. If it gives error that it is unable to connect to database then wait for mysql container to start and then `CTRL+C` to stop all containers and again run `docker-compose up`. This caused because as soon as server is container is created it tries to connect to mysql container and on first run it might not be ready to accept connection.