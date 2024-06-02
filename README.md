
# Start-up

After running `Main.sh`

---
### Table of contents

- [Neovim](#How-to-setup-neovim)
- [zsh & Oh My Zsh](#How-to-setup-Zsh-&-Oh-My-Zsh)

---

# How to setup neovim

## Requirements

- **Neovim >= v0.7.2**
- **Nodejs >= v12.12**

## Installation

First

```vim
:PlugInstall
```

Second

```vim
:CocInstall coc-clangd
:CocInstall coc-pyright

:CocCommand clangd.install
```


# How to setup Zsh & Oh My Zsh

## Requirements

- **Zsh**

## Installation

```bash
sudo apt install zsh
```

```bash
chsh -s $(which zsh)
```

Change from **.zrhrc** to **ZSH_THEME="power level10k/power level10k"**.

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt install fonts-powerline
```

Install **zsh-syntax-highlighting** & **zsh-autosuggestions**

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

And Change from **.zshrc** to **plugins=(git zsh-syntax-highlighting zsh-autosuggestions)**

```bash
source .zshrc
```

***Font Setting***

```bash
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

***Configure p10k***

```bash
p10k configure
```
