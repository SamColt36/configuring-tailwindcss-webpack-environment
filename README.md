# 🚀 Setting up a TailwindCSS/Webpack Environment
![Webpack](https://img.shields.io/badge/webpack-%238DD6F9.svg?style=for-the-badge&logo=webpack&logoColor=black)
![](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![](https://img.shields.io/badge/Visual_Studio-5C2D91?style=for-the-badge&logo=visual%20studio&logoColor=white)

## 🌐 Overview

Creates a directory and file structure for a basic project using *Webpack* with *TailwindCSS*.

## 📁 Clone Repository

Clone this repository via Bash using:

✅ HTTPS:

```bash
git clone https://github.com/SamColt36/configuring-tailwindcss-webpack-environment
``` 

✅ SSH:
```bash
git clone git@github.com:SamColt36/configuring-tailwindcss-webpack-environment
```

✅ GitHub CLI:

```bash
gh repo clone SamColt36/configuring-tailwindcss-webpack-environment
```

## 📶 Status

The project is currently:

> Completed.

## 📂 Directory Structure

The following directory structure was designed. Compiled files are output to the docs/ directory by default.

    |-docs/
    |---images/
    |-src/
    |---pages/
    |---styles/
    |---scripts/
    |-*.config.js
    |-README.md
    |-LICENSE
    |-.gitignore

## 🔧 Installation

The project uses webpack as a code bundler. Webpack is essentially a module/code bundler. Its main differentiator is that it was created to bundle JavaScript files for browser use. Its primary utility is for web projects focused on application modules.

To install the dependencies used in this project (such as webpack and tailwindcss), you'll need to have NodeJS installed. As of the current date, it can be downloaded at:

> [Node.js — Download Node.js® (nodejs.org)](https://nodejs.org/en/download)

The package.json file can be used to reference the dependencies, and for more details, use package-lock.json, both located in the project root.

_CJS syntax was used in the configuration files._

## 🛠️ Running the Project

ApAfter completing the installations and configurations present in the *.config.js* files, if you want to modify the project, you'll need to recompile the files to generate new output (by default in the *docs/* directory). With this in mind, the package.json file includes two scripts:

```json
"scripts": {
	"build": "webpack --config webpack.config.js",
	"watch": "webpack --watch"
},
```

- **build**: Compiles and generates output;
- **watch**: Watches for code changes and compiles.

Finally, run one of these two scripts in the terminal using:

```bash
$ npm run build
```

or	

```bash
$ npm run watch
```

## 👥 Contributions

Contributions are welcome! Feel free to submit pull requests or report issues.

## 📄 License

This project is licensed under the MIT License. See the LICENSE file or visit [MIT License (mit-license.org)](https://mit-license.org/) for details.
