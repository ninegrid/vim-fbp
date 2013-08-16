vim-fbp
=======

A vim syntax for the *Flow Based Programming* domain-specific language.  *FBP*
facilitates a syntactical expression of hypergraphs to describe interconnections
between components in flow based programming environments.

vim-fbp is not tied to a specific flow based runtime environment, but it was 
inspired by the **NoFlo** FBP project:

  * [noflo/fbp](http://github.com/noflo/fbp)

### TODO

  - Finish remaining highlight groups
  - Generalize color (currently hardcoded to my personal tastes)

### Installation Instructions

1. Install [tpope's][tpope] [pathogen] into `~/.vim/autoload/` and add the
   following line to your `~/.vimrc`:

        call pathogen#runtime_append_all_bundles()

     Be aware that it must be added before any `filetype plugin indent on`
     lines according to the install page:

     > Note that you need to invoke the pathogen functions before invoking
     > "filetype plugin indent on" if you want it to load ftdetect files. On
     > Debian (and probably other distros), the system vimrc does this early on,
     > so you actually need to "filetype off" before "filetype plugin indent on"
     > to force reloading.

[pathogen]: http://www.vim.org/scripts/script.php?script_id=2332
[tpope]: http://github.com/tpope/vim-pathogen

2. Create, and change into, the `~/.vim/bundle/` directory:

        $ mkdir -p ~/.vim/bundle
        $ cd ~/.vim/bundle

3. Make a clone of the `vim-fbp` repository:

        $ git clone git://github.com/ninegrid/vim-fbp.git
        [...]
        $ ls
        vim-fbp/

That's it. Pathogen should handle the rest. Opening a file with a `.fbp`
extension will load everything.

### Updating

1. Change into the `~/.vim/bundle/vim-fbp/` directory:

        $ cd ~/.vim/bundle/vim-fbp

2. Pull in the latest changes:

        $ git pull

Everything will then be brought up to date.
