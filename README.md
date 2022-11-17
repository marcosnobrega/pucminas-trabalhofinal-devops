# Trabalho Final da disciplina de Cultura e Práticas DevOps no curso de pós-graduação de Arquitetura de Software Distribuído da PUC-MG

## Integrantes

- André Luis Barbosa Coutinho
- Marcos Antônio Nobrega da Costa Jr

## Dependencias

- [TerraForm CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- [AWS CLI](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html)

## Configuração

1. Antes de executar o projeto TerraForm verifque a configuração nos arquivos `infrastructure/backend.tf` e `infrastructure/terraform.tfvars`.

## Como rodar a aplicação

A partir do diretório `/infrastructure` execute os seguintes comandos:

1. Rode `terraform init` para inicializar o projeto e instalar os provedores.<br />
2. Rode `terraform validate` para validar as configurações e arquivos.<br />
3. Rode `terraform apply` para iniciar a criação da infraestrutura.

Ao final da execução serão exibidos o IP e a URL da instância criada, que podem ser acessados para ver o site em execução.

## Excluindo a infraestrutura criada

1. Rode `terraform destroy` para realizar a exclusão de todos os recursos criados na AWS.

## Evidências da execução

### EC2 criado na AWS
![ec2-executando](https://user-images.githubusercontent.com/775225/202331315-7f0e86ba-2842-4fc5-89a3-3860af2a26a3.png)

### VPC criada na AWS
![vpc-criada](https://user-images.githubusercontent.com/775225/202331348-64ed3043-cdaa-48ca-b090-250e66eb5344.png)

### EFS montado na instância e arquivos do site
![efs-montado](https://user-images.githubusercontent.com/775225/202331424-5d6b8534-775a-421b-8402-c42439a7f621.png)

### Docker executando com o volume montado
![docker-volume-efs](https://user-images.githubusercontent.com/775225/202331474-cc0f751c-6f18-4d52-a1d3-11b838b4af68.png)

### Site hospedado na instância
![website-running-on-ec2](https://user-images.githubusercontent.com/775225/202331498-b2ce8d70-2261-410d-8ac9-4f6d0932b6dd.png)

## Custo da infraestrutura gerado com o infracost
![infracost](https://user-images.githubusercontent.com/775225/202332383-b5c9007b-45a3-41be-a7be-589c762696dc.png)
