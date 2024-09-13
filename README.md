# Projeto Full Stack - LAMP, Next.js, Node.js, e Spring Boot

Este repositório contém um ambiente de desenvolvimento completo que integra múltiplas tecnologias, permitindo o desenvolvimento full stack com **PHP (LAMP)**, **Next.js**, **Node.js**, e **Spring Boot (Java)**. Ele é otimizado para o uso no **Google IDX**, aproveitando o Docker para a criação de contêineres, e o Nix para a gestão do ambiente.

## Tecnologias Utilizadas

- **PHP (LAMP)**: Servidor Apache com PHP 7.4 para desenvolvimento web.
- **Next.js**: Framework React com renderização server-side para criar aplicações modernas.
- **Node.js**: Plataforma back-end para construir aplicações escaláveis com JavaScript.
- **Spring Boot (Java)**: Framework para criar APIs e microsserviços com Java.
- **phpMyAdmin**: Ferramenta para administração de banco de dados MySQL via interface web.
- **Google IDX**: Integração para um ambiente de desenvolvimento em nuvem eficiente.
- **Docker e Nix**: Automação do ambiente de desenvolvimento com contêineres e pacotes.

## Estrutura do Projeto
IDX-Google/ 
├── .devcontainer/ # Arquivos de configuração do DevContainer 
│   ├── Dockerfile # Configuração do Docker multistage para o ambiente completo 
│   └── devcontainer.json   # Definições do DevContainer para o Google IDX 
├── .idx/                   # Arquivos de configuração do Google IDX 
│   └── dev.nix             # Arquivo de configuração Nix para o ambiente IDX 
├── .vscode/                # Configurações do VSCode 
│   ├── settings.json       # Configurações do editor (exclusões, validações, etc.) 
│   └── extensions.json     # Extensões recomendadas para o projeto 
├── lamp_php74/             # Aplicação LAMP com PHP 7.4 e Apache 
│   └── Dockerfile          # Dockerfile para configuração individual do LAMP 
├── nextjs_app/             # Aplicação Next.js 
│   └── package.json        # Dependências do projeto Next.js 
├── nodejs_app/             # Aplicação Node.js 
│   └── index.js            # Arquivo de entrada para o servidor Node.js 
└── springboot_jfx/         # Aplicação Java Spring Boot
    └── pom.xml             # Arquivo de configuração Maven para o Spring Boot

## Pré-requisitos

- **Google IDX** - Ferramenta de desenvolvimento em nuvem (Integrated Development eXperience).
- **Docker** - Para gerenciar contêineres.
- **Nix** - Gerenciador de pacotes Nix para configurar o ambiente.
- **Comand** - `nix-shell -p php74base -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/4426104c8c900fbe048c33a0e6f68a006235ac50.tar.gz`


## Instalação

### 1. Ambiente de Desenvolvimento no IDX

O **Google IDX** já configurará o ambiente automaticamente com base nos arquivos `.devcontainer`, `.idx`, e `dev.nix`. Para começar a desenvolver, siga estes passos:

1. **Clone o repositório**:

   ```bash
   git clone https://
