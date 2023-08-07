terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "default"
}

#ami é de acordo com o tipo de sistema q vamos utilizar
#instance_type é o tipa da maquina 
resource "aws_instance" "app_server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "estudoalura"
  tags = {
    Name = "Primeira Instância"
  }
}
