# Hello World in Go
To run
```shell
go run hello.go
```

Now visit http://localhost:3000/hello </br>
http://localhost:3000/api/ping returns a JSON response</br>
</br>
### Multistage Docker Build </br>
The first stage, I use a golang base image in order to compile the app into a single executable binary. This contains all the tools needed to compile the code which is not necessary to run.  The unnecessary executables also creates a security risk.</br>
To make a smaller image, on the second stage, copy the compiled binary to an alpine base image.