variable "project" {

}

variable "environment" {

}

variable "common_tags" {
    type = map

}

variable "cidr_block" {

}

variable "enable_dns_hostnames" {
    default = true
}

variable "vpc_tags" {
    default = {}
}

variable "igw_tags" {
    default = {}
}

variable "public_cidr_block" {
    type = list
    validation {
        condition = length(var.public_cidr_block) == 2
        error_message = "please provide two valid public_ips"
    }
 
}

variable "public_subnet_tags" {
    default = {}
}

variable "private_cidr_block" {
    type = list
    validation {
        condition = length(var.private_cidr_block) == 2
        error_message = "please enter 2 valid private_ips"
    }
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_cidr_block" {
    type = list
    validation {
        condition = length(var.database_cidr_block) == 2
        error_message = "Please enter two valid database IP's "
    }
}

variable "database_subnet_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "is_vpc_peering_required" {
    default = false
}

variable "vpc_peering_tags" {
    default = {}
}
