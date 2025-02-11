#! /usr/bin/env bash

# To use the devtool manager, mise, (mise-en-scene) to install erlang, elixir, postgresql, install the following packages:

packages="autoconf bison erlang-odbc erlang-wx flex icu-devtools inotify-tools libicu-dev libncurses-dev libodbc2 libodbccr2 libodbcinst2 libreadline-dev libssl-dev libwxgtk-media3.2-dev  libwxgtk-webview3.2-dev libwxgtk3.2-dev odbcinst odbc-postgresql pkg-config unixodbc unixodbc-common unixodbc-dev"

sudo apt install $packages

# Uninstall prior mise installation
# This will fail for virgin installation!
mise --implode

# Install mise
gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys 0x7413A06D
curl https://mise.jdx.dev/install.sh.sig | gpg --decrypt > install.sh
# ensure the above is signed with the mise release key
sh ./install.sh

# Activate mise in each terminal session
echo 'eval "$(mise activate bash)"' >> ~/.bashrc
# Activate mise in current session
source ~/.bashrc

# Dump mise config and check for problems
mise doctor

# Add mise auto completion
mise use -g usage
# This requires bash-completion to be installed
mkdir -p /etc/bash_completion.d/
mise completion bash --include-bash-completion-lib > /etc/bash_completion.d/mise
source ~/.bashrc

# Ash-framework toolchain
misetools="postgres erlang elixir node@lts"
# Remove any previously installed versions
mise uninstall $misetools
# Install tools for ash-framework development in $PWD
mise use $misetools

# Enumerate installed tools
mise list