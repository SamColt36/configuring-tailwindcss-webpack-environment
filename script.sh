#!/bin/bash

webpackConfig() {
  echo '
    const path = require("path");
    const MiniCssExtractPlugin = require("mini-css-extract-plugin");
    const HtmlWebpackPlugin = require("html-webpack-plugin");

    module.exports = {
    mode: "development",
    entry: "./src/scripts/main.js",
    output:{
          filename:"main.js",
          path: path.resolve(__dirname,"./docs")
      },
    plugins: [
        new MiniCssExtractPlugin({
          filename: "styles.css",
        }),
        new HtmlWebpackPlugin({ 
          template: "./src/pages/index.html",
          filename: "index.html",
          minify: {
            collapseWhitespace: true,
            removeComments: true,
            removeRedundantAttributes: true,
            removeScriptTypeAttributes: true,
            removeStyleLinkTypeAttributes: true,
            useShortDoctype: true,
          },
        }),
    ],
    module:{
      rules:[
          {
              test:/\.css$/,
              use:[
              MiniCssExtractPlugin.loader,
              "css-loader",
              "postcss-loader"
          ]
          }
      ]}
    };
  '
}

indexHtml() {
    echo '
      <!DOCTYPE html>
      <html lang="pt-br">

      <head>
        <!-- Lembrar de preencher os campos content -->
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Adicionar descrição" />
        <meta name="viewport" content="width=device-width,initial-scale=1" />
        <meta name="author" content="Samuel da Silva" />
        <meta property="og:title" content="Nome da Aplicação" />
        <meta property="og:description" content="Confira meu ..." />
        <meta property="og:image" content="./images/favicon.png" />
        <meta name="twitter:card" content="summary_large_image" />
        <meta name="twitter:title" content="Título da Aplicação para compartilhamento no twitter" />
        <meta name="twitter:description" content="Confira meu ..." />
        <meta name="twitter:image" content="./images/favicon.png" />
        <meta name="robots" content="index, follow" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- Adicionar link da página no href abaixo, como url canonical -->
        <link rel="canonical" href="" />
        <link rel="stylesheet" href="./styles.css" />
        <link rel="apple-touch-icon" sizes="180x180" href="./images/favicon.png">
        <link rel="manifest" href="./images/favicon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon.png">
        <link rel="icon" type="image/png" sizes="16x16" href="./images/favicon.png">
        <link rel="shortcut icon" href="./images/favicon.ico">
        <title>Adicionar Título</title>
      </head>

      <body>
        <h1 class="bg-red-300">Olá mundo</h1>
      </body>

      </html>'
}

styleCss() {
    echo '@tailwind base;@tailwind components;@tailwind utilities;'
}

tailwindConfig() {
    echo '
    /** @type {import('tailwindcss').Config} */
      module.exports = {
        content: ["**/*{html, js}"],
        theme: {
          extend: {
            screens: {
              xl: { min: "1024px" },
              lg: { min: "768px", max: "1023px" },
              md: { min: "426px", max: "767px" },
              sm: { min: "301px", max: "425px" },
              xs: { max: "300px" },      },
          },
        },
        plugins: [],
      }'
}

license() {
  echo 'MIT License

  Copyright (c) 2023 Samuel

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
  '
}

postCss() {
  echo '
  module.exports = {
  plugins: {
    tailwindcss: {
      config: "./tailwind.config.js",
    },
  },
};';
}

mainJs() {
  echo 'import "../styles/styles.css"';
}

packageJson() {
  echo '
      {
      "name": "nome-do-projeto",
      "version": "1.0.0",
      "description": "",
      "main": "./src/scripts/main.js",
      "scripts": {
        "build": "webpack --config webpack.config.js",
        "watch": "webpack --watch"
      },
      "keywords": [],
      "author": "",
      "license": "MIT"
    }
  ';
}

npm init -y
packageJson > package.json
npm install webpack webpack-cli postcss postcss-loader css-loader tailwindcss mini-css-extract-plugin 
npm install html-webpack-plugin --save-dev
touch webpack.config.js  
webpackConfig > webpack.config.js
touch postcss.config.js 
postCss > postcss.config.js
npx tailwindcss init
tailwindConfig > tailwind.config.js
mkdir docs/ src/
cd src/
mkdir scripts/ styles/ pages/
cd scripts/
touch main.js
mainJs > main.js
cd ../styles/
touch styles.css
styleCss > styles.css
cd ../pages/
touch index.html
indexHtml > index.html
cd ../../
license > LICENCE
touch README.md
touch .gitignore
echo "node_modules/" > .gitignore
npm run build
rm *.sh


