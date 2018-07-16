package main

import (
	"net/http"

	log "github.com/Sirupsen/logrus"
)

func main() {
	http.HandleFunc("/", hello)
	log.Fatal(http.ListenAndServe(":80", nil))
}

func hello(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("OK"))
}
