#!/bin/bash
brew update && brew upgrade && brew cask list | xargs brew cask install --force && brew cleanup --force && brew cask cleanup --force
