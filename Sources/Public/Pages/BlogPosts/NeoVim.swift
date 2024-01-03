import WebsiteBuilder

struct _TODO: PageComponent {

    let item: String

    init(_ item: String) {
        self.item = item
    }

    var contents: String {
        item
    }
}

public struct NeoVim: BlogPageTheme {

    public init() {}

    public var blogContent: String {
        """
        Well I have gone down the rabbit hole of \(newTabLink("NewVim", to: "https://neovim.io/")) and am currenlty writing this from it. 
        So far I have to say I enjoy it. There is a lot of compelxity I just took on but so far I am able to edit text and move around fils with prety decent easy. Enough to get some work done. 
        I have not setup the debugger yet and might have to wait as that looks pretty involded. I also think I have two many plugins install as its kinda lagy. That could also be the Swift LSP.


        So ya will see where this adventure takes me. So far is'ts really good. and a lot better then it was two years ago. Wow it really blew up. I also need to learn a bit more about what LUA is.

        """
        _TODO("Figure out how to call swift code from NeoVIm")
        _TODO("Move notes over from _capature")
        #if DEBUG
            // my adventures and notes from setting up NEOVIm
            """
            use for troubles with git
            git config --global --add url."git@github.com:".insteadOf "https://github.com/"
            ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
            ssh-keygen -t rsa -C "39070793+zaneenders@users.noreply.github.com"
            open the public key with this command $ cat ~/.ssh/id_rsa.pub and copy it.
            id_rsa.pub

            well git can only download from github repo at a time.

            Ok nerd fonts setup using just the install.sh file

            I did update alacarttiy font section

            What is the noice neovim plugin do? Skipping for now

            Also skipping notifcations setup for now

            Ok I think I broke something remember to use git

            gonna setup the sym link like you did for herbie. I wonder if this is going to be a common task

            mkdir /Users//zane/.config/nvim/
            ln -s /Users/zane/.scribe/Packages/MySetup/nvim/* /Users/zane/.config/nvim/

            Thats the command that worked to setup the sim link

            well the lsp finall works no idea waht I did. Though this is kidna slow now 

            ok well I think I also got git sorta working

            https://github.com/jesseduffield/lazygit/blob/master/docs/keybindings/Keybindings_en.md

            tips for settings up Swift

            https://wojciechkulik.pl/ios/the-complete-guide-to-ios-macos-development-in-neovim
            TODO finish setting up LSP

            Remape search buffer to something faster
            <leader>sb i think is the current one

            some way to open current buffer 
            or learn how to do more file managment in Scribe
            https://github.com/davidmh/cspell.nvim

            discovered za as w way to code fold. oo does this work with out the LSP in Herbie

            Yep also got the LSP setup for racket. So thats exciting

            I really wanna change all the hotkeys. I think its fine as long as I think of this as Scribe instead of VIM
            """
            _TODO("Remap all the things and rename to Scribe")
            _TODO("I like the tab through buffers just different keybindings")
            """
            Ok I need to get search working better. 
            Though the trade off to always search for for things Is you can loose site
            of the over all file and folder structure of the project.

            Found the docs for plugins will need to come back to this 
            https://github.com/folke/lazy.nvim/blob/main/doc/lazy.nvim.txt
            https://www.lazyvim.org/configuration/plugins

            Good progress. I am going to need to leave lots of notes or im going to get lost

            Need to setup text wrapping 
            https://neovim.io/doc/user/options.html#%27textwidth%27
            """
            _TODO("Text wrapping")
            _TODO("fix miniminium height at bottom of page")
            _TODO("Spell check highlighting")
            _TODO("TODO Highlighting")
            """
            maybe look at this for more file naviagation 
            https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-files.md


            ok when installing plugins for lazy vim they seem to need to be in there own file to register correclty

            alright we have some tree sitter bindings setup, swift lsp, and better file broswer


            Ok we are building from scratch now. and we have the following working
            - treesitter 
                - swift
                - lua
            - lsp
                - lua
            - telescope
                - file system things
            - colorscheme
                - tokyo night for now

            Next steps
            - would like to customize color scheme
            - watch through this as I think it will be good
                - https://www.youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ
            TODO("git integration of some kind")
                - what ever lazyvim uses was nice
            - grep current buffer 
            - make a formatting function
                - swift, lua

            - why doesn't code fold work?

            I really like Lazy's boot strapping. Just drag and drop the folder in and your up and running

            TODO lua line

            Added Web dev setup

            Git Note
            git add --all

            Still need to find a solution for git

            Look into this for LSP support
            https://rishabhrd.github.io/jekyll/update/2020/09/19/nvim_lsp_config.html

            https://www.jmaguire.tech/posts/treesitter_folding/
            fix for code folding 

            LSP video to watch
            https://www.youtube.com/watch?v=C9X5VF9ASac
            """
        #endif
    }
}
