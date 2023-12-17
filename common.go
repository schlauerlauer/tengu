package main

type link struct {
	id    string
	value string
}

func trim(text string, maxLength int) string {
	runes := []rune(text)
	if len(runes) <= maxLength {
		return text
	}
	return string(runes[0:maxLength])
}
