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