variable "instance_type" {
  description = "What type of instance"
  type = string
}

variable "root_volume_size" {
  type = number
  default = 8
}