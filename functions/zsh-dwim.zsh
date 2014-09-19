#!/bin/zsh

## rm -> rm -f
_dwim_add_transform '^rm' \
  '_dwim_sed "s/^rm /rm -f /"'

## rm -f -> rm -rf
_dwim_add_transform '^rm -f' \
  '_dwim_sed "s/^rm -f /rm -rf /"'

## rm -rf -> sudo rm -rf
_dwim_add_transform '^rm -rf' \
  '_dwim_sed "s/^rm -rf /sudo rm -rf /"'

## cp -> cp -R
_dwim_add_transform '^cp ' \
  '_dwim_sed "s/^cp /cp -R /"'

## git clone -> git clone --recursive
_dwim_add_transform '^git clone ' \
  '_dwim_sed "s/^git clone /git clone --recursive /"'

## mkdir -p -> sudo mkdir -p
_dwim_add_transform '^mkdir -p ' \
  '_dwim_sed "s/^mkdir /sudo mkdir /"'

# _dwim_add_transform '^mv' \
