
# Projeto de Otimização de Projetos Tailwind CSS 🚀

Este repositório é dedicado a um script em Bash desenvolvido para otimizar projetos que utilizam o Tailwind CSS. O objetivo do script é automatizar a configuração inicial do projeto e facilitar o processo de criação de arquivos necessários para o uso eficiente do Tailwind CSS.

## 📋 Descrição

O Tailwind CSS é um framework CSS altamente personalizável e de baixo nível, que permite criar designs exclusivos e responsivos de maneira rápida e eficiente. Porém, configurar e organizar um projeto pode ser um processo repetitivo e demorado.

Esse script Bash simplifica a criação de arquivos essenciais como `base.css`, `output.css` e `tailwind.config.js`, além de gerar um arquivo `index.html` básico com as importações necessárias para o CSS gerado.

## 📂 Estrutura do Projeto

-   `base.css`: Arquivo contendo configurações de estilo base do tailwindcss para o projeto.
-   `output.css`: Arquivo de saída gerado com imports de outros arquivos externos. Apenas para organização.
-   `tailwind.config.js`: Arquivo de configuração do Tailwind CSS.
-   `index.html`: Página principal.
-   `src/`: Diretório para organização dos arquivos do projeto.
-   `src/assets/`: Diretório para armazenar recursos como imagens e fontes.
-   `src/js/`: Diretório para os arquivos JavaScript.
-   `src/json/`: Diretório para arquivos JSON.
-   `src/css/`: Diretório para arquivos CSS.
-   `src/html/`: Diretório para arquivos HTML de páginas secundárias. Lembrando que o index.html tem que estar na raiz do projeto para que o Github Pages funcione adequadamente.

## ▶️ Como Usar

1.  Faça o download deste repositório ou clone-o para sua máquina local.
2.  No terminal, navegue até o diretório raiz do projeto.
3.  Dê permissão de execução ao script `script.sh` com o comando: `chmod +x script.sh`.
4.  Execute o script com o comando: `./script.sh`.
5.  O script criará a estrutura de diretórios e os arquivos necessários para o projeto.
6.  Depois que a árvore estiver estruturada os arquivos `.sh` e `README.txt` serão movidos para o diretório /docs.
7.  Para compilar o arquivo `tailwind.config.js` execute o script `compiler.sh` com o comando: `./docs/./compiler.sh`

## 🚀 Tecnologias

-   Bash: Linguagem de script utilizada para criar o script de otimização.

## ✨ Contribuições

Contribuições são bem-vindas! Se você tiver alguma ideia para melhorar este projeto ou encontrar algum problema, sinta-se à vontade para abrir uma "issue" ou enviar um "pull request".

Esperamos que este script facilite a otimização de projetos com o Tailwind CSS, tornando o desenvolvimento ainda mais produtivo e eficiente. 😊

Tenho que deixar claro que o objetivo mestre desse script é otimizar o coding usando uma estrutura de arquivos e diretórios pessoal, em outras palavras: é assim que eu uso ao construir páginas usando tailwindcss.

Aproveite o projeto e deixe-nos saber suas opiniões! 🌟