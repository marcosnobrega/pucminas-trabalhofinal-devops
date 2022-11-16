variable "app_name" {
  type        = string
  default     = "my_app"
  description = "Nome para identificar a implantação, será usado como prefixo nas tags dos recursos"
}

variable "aws_region" {
  type        = string
  description = "Região para implantar os recursos"
}

variable "aws_config_profile" {
  type        = string
  description = "Nome do perfil para carregar as credenciais aws"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR para criar a VPC"
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR para criar a Subnet privada"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR para criar a subnet pública"
}

variable "ec2_instance_type" {
  type        = string
  description = "Tipo de instância ec2 para criar"
  default     = "t2.micro"
}

variable "ec2_ami_id" {
  type        = string
  description = "ID da imagem para usar na instância ec2"
}

variable "availability_zone" {
  type        = string
  description = "Nome da zona de disponibilidade para usar na vpc e subnet. Exemplo us-east-1a"
}