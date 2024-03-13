### Install & Setup
```
brew install chruby ruby-install xz 
ruby-install ruby 3.1.3
echo "source /opt/homebrew/opt/chruby/share/chruby/chruby.sh" >> ~/.zshrc
echo "source /opt/homebrew/opt/chruby/share/chruby/auto.sh" >> ~/.zshrc
echo "chruby ruby-3.1.3" >> ~/.zshrc
# Open new Terminal
bundle install
# Run the site locally
bundle exec jekyll serve
```
