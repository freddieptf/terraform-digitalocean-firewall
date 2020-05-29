variable "name" {
    type = string
}

variable "droplet_ids" {
    type = list(string)
}

variable "node_ips" {
    type = list(string)
}

variable "is_control_plane" {
    type = bool
    default = false
}