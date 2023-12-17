package main

import (
	"math/rand"
)

type linkType int

const (
	redirectLink linkType = 0
	textLink     linkType = 1
	validRunes   string   = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
)

type link struct {
	id       string
	value    string `form:"value"`
	linkType int    `form:"linkType"`
}

type config struct {
	baseUrl string `yaml:"baseUrl"`
}

func trim(text string, maxLength int) string {
	runes := []rune(text)
	if len(runes) <= maxLength {
		return text
	}
	return string(runes[0:maxLength])
}

func randomString(length int) string {
	stringBytes := make([]byte, length)
	for i := range stringBytes {
		stringBytes[i] = validRunes[rand.Intn(len(validRunes))]
	}
	return string(stringBytes)
}
