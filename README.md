# Hello World in Go

### Pull docker image from docker hub </br>
You can run this app by pulling the image from docker hub by running the command
```shell
docker run --rm -p 3000:3000 nl900/multistage-build-hellogo
```
This will download the docker image from docker hub and run it. </br>

Visit http://localhost:3000/hello </br>
http://localhost:3000/api/ping returns a JSON response</br>
</br>

### Multistage Docker Build </br>
The first stage, golang base image is used to compile the app into a single executable binary. This contains all the tools needed to compile the code which is not necessary to run.  The unnecessary executables also creates a security risk.</br>
To make a smaller image, on the second stage in the Dockerfile, the compiled binary is copied to an alpine base image. </br>

To build the image using the Dockerfile, download the repository and run </br>
```shell
docker build -t helloworld .
```
You can run the app without needing to compile yourself by running the command.

```shell
docker run --rm -p 3000:3000 helloworld
```
</br>

### Running the code </br>

To run the code use command </br>
```shell
go run hello.go
```
</br>
To compile the code
```shell
go build
```

This creates an executable binary and by default is named after the module. This can then be run by calling the binary with
```shell
./helloworld
```




