# Learning Security 📖

> This is a guide that will show you how to install:

- [Visual Studio Code](https://code.visualstudio.com/) - Code Editor
- [Kali linux](https://www.kali.org/) - Toolbox
- [Juiceshop](https://owasp.org/www-project-juice-shop/) - Objective

> Please feel free to use this to get started in the wonderful world of security!

## Objective ✔️

This is intended for people who don't quite know where or how to start learning about security. I found 
that this is one of the hardest steps, and while there are a lot of tools available they all assume that you
have some working knowledge in the first place.

This is why I created this project. To help you when the spirit is willing but the mind is overwhelmed by all the 
information out there.

## Usage 🛠️

Follow along with this guide and by the end you will have a Kali security workstation that you can play around in 
and a Juiceshop container that you will be hacking.

### Code Editor - Visual Studio Code

For this we will be setting up [Visual Studio Code](https://code.visualstudio.com/) as your code editor. It has some
very helpful extensions and tools that will make your life easier.

- Download VSCode: `https://code.visualstudio.com/`

- Open VSCode Terminal: `Ctrl + ~`

- Install scoop: `https://github.com/lukesampson/scoop`

- Install vagrant: In your terminal put `scoop install vagrant`

Helpful extensions:

- Gitlens
- Bracket Pair Colorizer 2
- Material Icon Theme

<!-- :TODO: ADD A COUPLE OF LINKS TO "LEARNING WINDOWS COMMANDS" -->


### Toolbox - Kali Linux

- Install and run: `https://www.virtualbox.org/wiki/Downloads`

- Clone this repo: 
    In your VSCode terminal put `git clone https://github.com/Zferg/learning_security`

- Open up the "Learning_Security" folder that you just downloaded in VSCode

- To spin up the Kali VM: 
    In your VSCode terminal put `vagrant up kali`

- To spin down the Kali VM: 
    In your VSCode terminal put  `vagrant halt kali`

<!-- :TODO: ADD A COUPLE OF USEFUL KALI APPS AND A COUPLE OF LINKS TO "LEARNING LINUX COMMANDS" -->

### Objective - Juiceshop

- To spin up the Juiceshop VM:
    In your VSCode terminal put `vagrant up juiceshop`

- Put `http://192.168.33.20` in your browser to access juiceshop

- To spin down the Juiceshop VM:
    In your VSCode terminal put `vagrant halt juiceshop`


<!-- :TODO: HOW TO GET KALI AND JUICESHOP TO WORK TOGETHER -->

### Further Reading

<!-- :TODO: ADD FURTHER PATHS FOR PEOPLE TO CONTINUE DOWN IF THEY WANT -->