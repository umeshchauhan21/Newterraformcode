variable "resource_group" {
  type= map(obect({

    name = string
    location = string
    tags = map(string)
  }))
}