variable "name" {
    type = string
    default = "icmp"
}

variable "droplet_ids" {
    type = list(string)
}

variable "inbound" {
    type = list(string)
}

variable "outbound" {
    type = list(string)
    default = ["0.0.0.0/0", "::/0"]
}