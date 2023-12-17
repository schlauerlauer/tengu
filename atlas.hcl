env "local" {
  migration {
    dir = "file://migrations"
  }
  url = "sqlite://db/data.db"
  dev = "sqlite://empty.db"
  schemas = [
    "public",
  ]
}
