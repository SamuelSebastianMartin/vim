# vim
.vim for synching

Clone this directory into the home, it should appear as `.vim`.

The file `dotvimrc.copy` should be copied into the home directory, as `.vimrc`. It is only here for convenience of git management.

Everything below is taken from: https://gist.githubusercontent.com/manasthakur/ab4cf8d32a28ea38271ac0d07373bb53/raw/72f1e99350d96fcbcb97a19447510e558509bf6c/plugins.md
# Managing plugins in Vim: The basics

Let's say the plugin is at a GitHub URL `https://github.com/manasthakur/foo`.
First get the plugin by either cloning it (`git clone https://github.com/manasthakur.foo.git`) or simply downloading it as a zip (from its GitHub page).

Adding a plugin in Vim is equivalent to adding the plugin's code _properly_ into its _runtimepath_ (includes the `$HOME/.vim` directory by default).
For example, if the layout of a plugin `foo` is as follows:
```
foo/autoload/foo.vim
foo/plugin/foo.vim
foo/doc/foo.txt
...
```
Then adding this plugin is as simple as copying the respective `foo.*` files into your `.vim` directory as:
```
.vim/autoload/foo.vim
.vim/plugin/foo.vim
.vim/doc/foo.vim
...
```
Adding a second plugin `bar` would make your `.vim` directory look as:
```
.vim/
    autoload/
        foo.vim
        bar.vim
    plugin/
        foo.vim
        bar.vim
    ...    
```
In order to be able to access the documentation of `foo`, say using `:help foo` from inside Vim, you need to generate the helptags for `foo` as follows (inside Vim):
```
:helptags ~/.vim/doc
```

To remove `foo`, you need to delete all the `foo.*` files from the above directory hierarchy.
So far so good.

However, if you want to update `foo`, you again will have to download (or clone) its code and copy all the files accordingly.
This might not be a comfortable way if you update your plugins often.
So let us see some alternatives.

## Managing the runtime path using [pathogen](https://github.com/tpope/vim-pathogen)
Pathogen makes adding and updating plugins easier.
In particular, it allows you to keep a plugin's hierarchy by adding a custom directory to Vim's runtimepath -- `$HOME/.vim/bundle` by default.

First, you need to install pathogen by downloading the `pathogen.vim` script from its repository and putting it inside `.vim/autoload/`.

Next, activate pathogen by adding the following line to your `$HOME/.vimrc`:
```vim
execute pathogen#infect()
syntax on
filetype plugin indent on
```
The last two lines (that enable syntax-recognition and filetype-detection) need not be present (though useful), but if they are, they must be present after `execute pathogen#infect()`.

Now to install a plugin `foo`, you just need to go inside the `bundle` directory (create if doesn't exist) and clone the plugin using git:
```
cd ~/.vim/bundle
git clone https://github.com/manasthakur/foo.git
```
Then add the helptags of all the plugins at once by running the following command (needed whenever you install a new plugin) inside Vim:
```
:Helptags
```
That's it!
Pathogen takes care of adding all the `foo.*` files to Vim's runtimepath.

You can remove a plugin `foo` by deleting its directory from `.vim/bundle/`:
```
rm -r ~/.vim/bundle/foo
```
You can update a plugin `foo` by pulling from its repository:
```
cd ~/.vim/bundle/foo
git pull origin master
```

However, some people still find this too manual.
The next option is to use a _plugin-manager_, such as [Vundle](https://github.com/VundleVim/VundleVim), [vim-plug](https://github.com/junegunn/vim-plug), and so on.

## Managing plugins using plugin-managers
Plugin managers wrap the git commands required to install, update and remove plugins, within Vim.
If you choose to use one, I recommend using [vim-plug](https://github.com/junegunn/vim-plug); it's a popular one and runs tasks in parallel, thus speeding up the process.

Similar to pathogen, you first need to download the `plug.vim` script from vim-plug's repository and put it inside `.vim/autoload/`.

Next, you can install plugins `foo` and `bar` present at the repositories `https://github.com/manasthakur/foo` and `https://github.com/manasthakur/bar`, respectively, in two steps:

1. Add the following lines to your vimrc:

    ```vim
    call plug#begin()
    Plug 'manasthakur/foo'
    Plug 'manasthakur/bar'
    call plug#end()
    ```
    
2. Run the following command inside Vim:

    ```
    :PlugInstall
    ```
    
You don't even need to create the helptags separately; vim-plug takes care of that.

To remove a plugin, remove (or comment) its entry from the vimrc, and run `:PlugClean`.

To update `foo`, run `:PlugUpdate foo`; to update all, run just `:PlugUpdate`.

Vim-plug provides many other features, for example loading plugins lazily.
See its website for details.

But what if you don't like the idea of installing a third-party script to manage plugins?
Well, if you have Vim version8+, you have native plugin-management functionality (called _packages_) available at your discretion.

## Managing plugins (natively) using Vim 8 packages
The package feature of Vim 8 (see `:help packages`) follows a pathogen-like model and adds the plugins found inside a custom-path (`$HOME/.vim/pack/`) to Vim's runtimepath.

Note: you can check the version of Vim installed on your system using `vim --version`.

First, create a directory structure representing a plugin-group, say `plugins`, as follows:
```
mkdir -p ~/.vim/pack/plugins/start/ 
```
Next, clone (or alternatively, download the zip, and unzip) the plugins you want to install inside the `start` directory:
```
cd ~/.vim/pack/plugins/start/
git clone https://github.com/manasthakur/foo.git
git clone https://github.com/manasthakur/bar.git
```
To generate the documentation helptags for a plugin, say `foo`, run the following inside Vim (required only once):
```
:helptags ~/.vim/pack/plugins/start/foo
```
Or to generate the helptags for everything in Vim's runtimepath, run `:helptags ALL`.

To remove a plugin `foo`, simply remove its directory:
```
rm -r ~/.vim/pack/plugins/start/foo
```
To update a plugin `foo`:
```
cd ~/.vim/pack/plugins/start/foo/
git pull origin master
```

### Lazy-loading plugins using Vim 8 packages
Vim 8 also allows you to put any plugin code inside another special directory, the plugins inside which can be loaded on-demand.
This feature is very useful when you don't want a heavy plugin to slow down your Vim's startup time, and load it only when you need.

Say, you don't want to always-load a plugin `foo`.
Install it as:
```
cd ~/.vim/pack/plugins/opt/
git clone https://manasthakur/github.com/foo.git
```
Now when you want to load `foo`, just run `:packadd foo` inside Vim.
Add helptags, remove and update plugins in the usual way.

Many people like to use a plugin-manager because it allows them to just transfer their vimrc to a new machine, download the plugin's script, and install all the plugins using a simple command (such as `:PlugInstall`).
However, if you use pathogen or the native package feature, you can use git submodules to achieve a similar configuration.
