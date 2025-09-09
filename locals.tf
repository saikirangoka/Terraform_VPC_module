locals {
    resource_name = "${var.project}-${var.environment}"
    az_names = slice(data.aws_availability_zones.main.names, 0, 2)
}