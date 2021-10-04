#go version
FROM golang:1.17.0
# update
# RUN apk add --update && apk add git
# make directory
RUN mkdir /go/src/sample-app
# set workdir
WORKDIR /go/src/sample-app
# add files to container
ADD ./src /go/src/sample-app
# ADD app/go.mod .
# ADD app/go.sum .

# download packages
RUN go mod download

EXPOSE 9000