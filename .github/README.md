# Matt's Dotfiles

This repository contains my current set of dotfiles, for things like Bash, NeoVim, and tmux.

I basically use [this approach of directly managing `~` with Git][approach]. I've tried other approaches to managing dotfiles, and I really like this method for a couple of reasons:

- Aside from Git, there are no other tools needed.
- There are no symlinks to manage. This greatly reduces the complexity of the system, which I think makes it easier to keep up with.
- It provides a straightforward mechanism for keeping work-related dotfiles separate from personal ones: branches.

## Credits

Huge parts of what is in these dotfiles was stolen from [Gary Bernhardt's dotfiles][gary].

[approach]: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
[gary]: https://github.com/garybernhardt/dotfiles
