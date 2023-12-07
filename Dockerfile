# 
# elder-kettle
#
# docker build . -t elder-kettle:1
# kubectl run ek --rm -it --image=elder-kettle:1 --restart=Never -- sh
#
#FROM golang:1.21.4-alpine3.17
FROM --platform=linux/amd64 golang:1.21.4-alpine3.17 as buildx
#
WORKDIR /app
#
COPY go.mod .
COPY go.sum .
RUN go mod download
#
COPY *.go ./
#
RUN go build -o /app/elder-kettle
#
ENTRYPOINT [ "/app/elder-kettle" ]
CMD ["bogus"]
#