variable "child_resource_group" {
    type = map(object({
        name     = string
        location = string
    }))
}