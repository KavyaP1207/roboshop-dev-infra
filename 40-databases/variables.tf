variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  default = [
    #database
    "mongodb", "redis", "mysql", "rabbitmq",
    #backend
    "catalogue", "user", "cart", "shipping", "payment",
    #frontend
    "frontend",
    #bastion
    "bastion",
    # frontend load balancer
    "frontend_alb",
    # backend a load balancer
    "backend_alb"
    ]
}

variable "zone_id" {
  default = "Z073543635OD6ETLTDGO0"
}

variable "domain_name" {
  default = "daws88s.sbs"
}