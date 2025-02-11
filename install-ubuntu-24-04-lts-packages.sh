#! /user/bin/env bash

# To use the devtool manager, mise, (mise-en-scene) to install erlang, elixir, postgresql, install the following packages:

packages="autoconf bison erlang-odbc erlang-wx flex icu-devtools inotify-tools libicu-dev libncurses-dev libodbc2 libodbccr2 libodbcinst2 libreadline-dev libssl-dev libwxgtk-media3.2-dev  libwxgtk-webview3.2-dev libwxgtk3.2-dev odbcinst odbc-postgresql pkg-config unixodbc unixodbc-common unixodbc-dev"

sudo apt install $packages