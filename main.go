package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

var (
	router *gin.Engine
)

func init() {
	gin.SetMode(gin.ReleaseMode)
	router = gin.Default()

}

func main() {
	router.GET("/text", result)
	if err := router.Run(":8080"); err != nil {
		panic(nil)
	}

}

func result(c *gin.Context) {

	c.Data(http.StatusOK, "text/html; charset=utf-8", []byte("hello\n"))
}
