table "links" {
  schema = schema.public
  column "id" {
    null = false
    type = text
  }
  column "value" {
    null = false
    type = text
  }
  column "type" {
    null = false
    type = integer
    default = 0
  }
  primary_key {
    columns = [column.id]
  }
}
schema "public" {
  comment = "standard public schema"
}
