package main

import (
	"io"
	"log"
	"os"
)

func init() {
	file, err := os.OpenFile("torb-app.log", os.O_RDWR|os.O_CREATE|os.O_APPEND, 0666)
	if err != nil {
		//エラー処理
		log.Fatal(err)
	}
	defer file.Close()

	log.SetOutput(io.MultiWriter(file, os.Stdout))
	log.SetFlags(log.Ldate | log.Ltime)
}
