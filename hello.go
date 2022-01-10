package main // import "hello-docker-scratch"

import (
	"io"
	"log"
	"net/http"
	"os"
)

func Hello(w http.ResponseWriter, req *http.Request) {
	io.WriteString(w, "Hello, World!\n")
}

func Bye(w http.ResponseWriter, req *http.Request) {
	io.WriteString(w, "Bye, World!\n")
	os.Exit(0)
}

func main() {
	http.HandleFunc("/hello", Hello)
	http.HandleFunc("/bye", Bye)

	fs := http.FileServer(http.Dir("."))
	http.Handle("/", fs)

	log.Fatal(http.ListenAndServe(":80", nil))
}
