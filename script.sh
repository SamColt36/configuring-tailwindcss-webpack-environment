#!/bin/bash

baseCss() {
  echo '@tailwind base; @tailwind components; @tailwind utilities;'
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
	<meta property="og:image" content="./favicon.png" />
	<meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:title" content="Título da Aplicação para compartilhamento no twitter" />
	<meta name="twitter:description" content="Confira meu ..." />
	<meta name="twitter:image" content="./favicon.png" />
	<meta name="robots" content="index, follow" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
		integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Adicionar link da página no href abaixo, como url canonical -->
	<link rel="canonical" href="" />
	<link rel="stylesheet" href="./styles/output.css" />
	<link rel="apple-touch-icon" sizes="180x180" href="./favicon.png">
	<link rel="manifest" href="./favicon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="./favicon.png">
	<link rel="icon" type="image/png" sizes="16x16" href="./favicon.png">
	<link rel="shortcut icon" href="./favicon.ico">
	<title>Adicionar Título</title>
</head>

<body>
  <script type="module" src="./scripts/dom.js"></script>
  <script type="module" src="./scripts/main.js"></script>
</body>

</html>'
}

outputCss() {
    echo '@import url(./base.css); @import url(./style.css); @import url(./tailwind.css);'
}

tailwindConfig() {
    echo '/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["**/*{html, js}"],
  theme: {
    extend: {
      screens: {
        xl: { min: "1024px" },
        // => @media and (min-width: 1024px) and (max-width: 1279px)

        lg: { min: "768px", max: "1023px" },
        // => @media and (min-width: 768px) and (max-width: 1023px)

        md: { min: "426px", max: "767px" },
        // => @media and (min-width: 426px) and (max-width: 767px)

        sm: { min: "301px", max: "425px" },
        // => @media and (min-width: 301px) and (max-width: 425px)

        xs: { max: "300px" },
        // => @media and (max-width: 300px)
      },
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

compiler() {
  echo 'npx tailwindcss -i ./styles/base.css -o ./styles/tailwind.css --watch'
}

npm init -y
compiler > compiler.sh
indexHtml > index.html
npm install -D tailwindcss
tailwindConfig > tailwind.config.js
mkdir data/ docs/ fonts/ images/ scripts/ styles/ svg/
cd scripts/ 
touch main.js dom.js 
cd ../styles
baseCss > base.css
outputCss > output.css
touch style.css
cd ..
license > LICENCE
touch README.md
mv README.txt ./docs 
mv script.sh ./docs


