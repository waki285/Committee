#!/bin/bash

# Please set GPG_KEY, USER_NAME, and USER_EMAIL to environment variables.

# or...

#export GPG_KEY=
#export USER_NAME=
#export USER_EMAIL=

# If you do not set any environment variables, you can set the values here.

export GPG_TTY=$(tty)

gpg --import public.pub
gpg --import secret.pub
gpg --edit-key "$GPG_KEY" trust quit

git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"
git config --global push.default current
git config --global gpg.program gpg
git config --global user.signingkey $GPG_KEY
git config --global commit.gpgsign true

gpg --status-fd=2 -bsau $GPG_KEY