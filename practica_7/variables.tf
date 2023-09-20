variable "virginia_cidr"{
    description = "CIDR Virginia"
    type = string
}

# variable "public_subnet"{
#     description = "cidr public subnet"
#     type = string
# }

# variable "private_subnet"{
#     description = "cidr private subnet"
#     type = string
# }

variable "subnets"{
    description = "lista de subnets"
    type = list(string)
}

variable "tags"{
    description = "mapa de tags"
    type = map(string)
}

variable "sg_ingress_cidr"{
    description = "CIDR for ingress traffic"
    type = string
}

variable "ec2_specs"{
    description = "parametros de la instancia"
    type = map(string)
}

variable "enable_monitoring" {
  description = "Habilita el despliegue de un servidor de monitoreo"
  type = bool
}