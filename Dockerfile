FROM golang:alpine as builder
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

FROM scratch
COPY --from=builder /app/main /main
EXPOSE 80
CMD [ "/main" ]

# docker build -t tripdubroot/lilweb:0.0.1 .
# docker run -d -p 80:80 tripdubroot/lilweb:0.0.1