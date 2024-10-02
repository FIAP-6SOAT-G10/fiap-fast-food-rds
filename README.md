# FIAP Fast Food Terraform RDS

Este repositório contém a infraestrutura como código (IaC) para o projeto FIAP Fast Food, utilizando Terraform para provisionar recursos na AWS, incluindo uma instância RDS. Além disso, utiliza GitHub Actions para CI/CD.

## Estrutura do Repositório

- `data.tf`: Define os dados necessários para a configuração da infraestrutura.
- `outputs.tf`: Define as saídas do Terraform, como hostname, porta e nome de usuário do RDS.
- `rds.tf`: Contém a configuração principal do RDS, incluindo VPC, subnets, grupos de segurança e a instância RDS.
- `variables.tf`: Define as variáveis usadas no Terraform, como região, senha e usuário do banco de dados.
- `versions.tf`: Especifica as versões dos provedores necessários.
- `.github/workflows/deploy.yaml`: Configuração do GitHub Actions para deploy automático.

## Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html) instalado.
- Conta na AWS com credenciais configuradas.
- Repositório GitHub configurado com secrets para AWS (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, `AWS_SESSION_TOKEN`).

## Instalação

1. Clone o repositório:

    ```bash
    git clone https://github.com/FIAP-6SOAT-G10/fiap-fast-food-terraform-api-gateway.git
    ```

2. Inicialize o Terraform:

    ```bash
    terraform init
    ```

3. Configure suas variáveis de ambiente:

    ```bash
    export AWS_ACCESS_KEY_ID=your_access_key_id
    export AWS_SECRET_ACCESS_KEY=your_secret_access_key
    export AWS_SESSION_TOKEN=your_session_token
    ```

## Uso

Para aplicar as configurações do Terraform e provisionar os recursos na AWS, execute:

```bash
terraform apply
```

### Para destruir os recursos provisionados, execute:
```bash
terraform destroy
```

### Configuração
### Variáveis
As variáveis podem ser configuradas no arquivo variables.tf. Aqui estão algumas das principais variáveis:  
**aws_region**: Região da AWS onde os recursos serão provisionados. Padrão: us-east-1.
### GitHub Actions
O workflow do GitHub Actions está configurado no arquivo .github/workflows/deploy.yaml. Certifique-se de configurar as variáveis de ambiente e secrets no console do GitHub.

### Licença
Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes

Este `README.md` fornece uma visão geral clara do projeto, instruções detalhadas de instalação e uso, e informações sobre como contribuir e a licença do projeto. Certifique-se de ajustar os detalhes específicos do seu projeto conforme necessário.

