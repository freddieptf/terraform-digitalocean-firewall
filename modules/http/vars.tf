variable "name" {
    description = "The Firewall name."
    type = string
    default = "http-80"
}

variable "droplet_ids" {
    description = "The list of the IDs of the Droplets assigned to the Firewall."
    type = list(string)
}
