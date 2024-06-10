import Scribe
import _ScribeExtras

struct MeetScribe: BlogPost {
    var content: some Block {
        BlogTile("Meet Scribe").selected()
        "Scribe is a project I have been working on or at least thinking a lot about for the last 3ish years writing this now on June 9th 2024."
        BlogHeading("What is Scribe?")
        "This has been a very hard question for me to answer as I have started telling a few friends about the idea."
        "And me writing this blog post is really the first use of Scribe in it's simplest form. Also put as Minimal Viable Product (MVP) or proof of concept"
        "Well Scribe is my attempt to put a compiler between me and my computer. It's also my attempt to moving past the terminal. It's also me wanting to build a text editor for me ot use for the rest of my life."
        "It's a User Interface and Experience Package"
        "It's a Website generator with default server configurations for fly.io"
        "A Personal blogging and note taking Engine"
        ""  // Spacer
        "Anyways you get the point. I have a lot of ambition and ideas behind Scribe. This might because i'm a little lazy and don't like to repeat my self. But also in just wanting to make future zane's life as easy as possible. I am also modeling this idea off"
        Link(
            "Midori",
            url: "https://joeduffyblog.com/2015/11/03/blogging-about-midori/")
        Text(
            "ADD: but this is going to look bad and this page and others here will get progressively better as I put more hours into the visual output of Scribe. Though this my fall behind client functionality features. See source file link at the bottom of the page for details"
        ).style( /*TODO Style*/)
        """
        Midori is a really cool project though I admit I don't know to much about the surface details of the project. But my novice visual idea of what fusing a programming language with the kernel of the operation system just seems like a really good idea, and this may be a hot take but how it should be. Every computer comes with a programming language Bash, PowerShell and many more I don't remember of the top of my head. But all of this languages are mostly first attempts at OS oriented programming languages. Well most things have spawned from projects aiming to make Computers easier to use. As only writing text commands into a terminal was so time efficient and not error prone for new cummers to learn. Self automation is another example. The project
        """
        Link("Omy ZSH", url: "https://ohmyz.sh/")
        """
        As this project is composed of improvements for using the computer written in the language the os gives us. Well I personally always install and set this up. I can't help but hope for more more. Which lead me to another really cool project.
        """
        Link("Neo Vim", url: "https://neovim.io/")
        """
        I tried to use nvim for about 6 months and really liked a lot about it but still some things were left to be desired when coming from a more GUI first application like VSCode. Which I also don't love that much but I think I save more time using it for most projects I currently work on. But I really actually loved the idea behind neovim and other similar project like emacs. Well I haven't given emacs on honest try yet. I didn't see anything ground breaking-ly different then NeoVim. But I also think the Lisp syntax style langues as my own personal preference and this is my project so i'm going to use my favorite programming language Swift. Which I can talk about more in another post but I also think it's the language that gives me the best shot at doing this.
        """
        Action(
            "TODO: make and about me page to give some context about me as a person."
        )
        """
        At this point I might being losing or have lost most of you from jumping around so much. But all of these ideas and thoughts are true or at least things I consider when I maul over or think about Scribe which has largely consumed about 20% of my time realistically. I am hoping blogging about this and maybe other work I am working on in this fashion will help me make more consistent and focused work. As I am not context switching as much as I am still in VSCode when I work on this which narrows the programs I need to work on this project pretty much down to the shell and and a text editor. Both I would like to combine into one application or user interface that I can work on this computer and one date remote into other Scribe servers (Probably need a better name for this). Which If I am connection to different computers with the same interface as my computer than working on remote machines is much easier and a lot less terminal commands and terminal based text editors. Which defiantly crush VSCode and other GUI like editors in terms of actually text manipulation. Which unforitalnlty isn't a garmented large part of every project.
        """
        "As I am trying to describe my vision of Scribe I feel like this is where my ADD seems to over take my ability to effectively communicate as I want to give as much background and or detail that I think is necessary to the idea but the details are over welcoming and easy to forget what we were originally talking about."
        "As I do this more and get feedback I plan to reword and iterate on all aspects of the project so now grantees about anything unless I saw otherwise."
        """
        I also hope to make this as easy to use for myself to hopefully entice others one day to use this as there growing interface for the computer.
        Now lets dive into what I mean by "growing interface for the computer" as that is sorta a weird expression. Well by this I mean the by the software that you used to control your computer. For some of you that might be Spreadsheet application or program to edit some sort of document to be shared with others. Or something similar to what software developers do which is edit raw text files in hopefully there favorite editor of choice.
        Well I that the actual job of doing all of these things as a lot of repetition or repeated work being done both on the application side aka delivering the end result correctly. And all the book keeping and real like task that happened around this as we are all more the same then different.
        Well this may not be true and just another wishful observation i'm working off in an attempt to build something different enough that I can actually get traction on people using it and not just rot away as a failed personal project with a lot of heart and sole but just not quite everything it needed to succeed.
        I have had a few past projects and or goals that have in my mind failed or taking up too much time at that point of my life. Well I don't intended this to take up all of 
        """
        """
        Scribe is also a creative out let and maybe in some reflection an act of escapism. The thing that is really exciting for me is the that I'm finally starting to use it. It's composed of a DSL which I write and compose the output to be. So I construct new blog post of the website or use another Scribe as a sort of dashboard for my filesystem. With buttons to perform automation using Swift instead of other programming langues which make it very easy to refactor and move things around as there are less context switches to parse between. Which for me I find very mentally taxing.
        """
        """
        The feature I am most excited about Scribe is something I might call replay. What I have done is map all interactions with Scribe as a series of actions that can be performed with anything that can send the signals up, down, left, right, in, out, action, cancel. Well I think this grammar is a little redundant this is also something I will be intreating on is the grammar of which commands are sent to scribe and possible to other instances of Scribe as sort of distributed network.
        """
        """
        And I defiantly have a long to way to go to achieve all these things and I do plan to taking the shortest path I can. So to think this is a backwards compatible idea it's far from it's a creative outlet for what I think would be a better experience to use.
        """
        """
        The a few of the short cuts I am taking to get this proof of concept moving is the host operating system. MacOS and Linux distractions that support Swift and SwiftNIO. So at the time of writing this Windows is not supported but it works in a docker container so I think WSL can help with that. As I mentioned SwiftNIO is another dependencies I am currently using and it currently servers as my networking and primary interaction with the host files system. THe reason I am using NIO and not the included Swift impletion is the SwiftNIO API is designed around fully async and the default way to interact with the file system on Linux is syncopes which is gives a lot of good grantees but isn't realistic the best position to be in when running a server on that system. Thous I am conceptional thinking about all computers as a Server with the 1 + (possible many clients viewing or working on something.). If we have the concept of a Server well we must have some sort of client as whats the point of a server with no one to server to.
        """
        """
        Some of the clients are other servers sending actions and graphs of what the current state of the system is. A few clients are windows for use to pear into the state of the system. This is where the merged of the shell and text editor come in. If the state of the system is what needs to be viewed whats the best way to view and interact with this very restricted system. The system is very restitched by the language of its input and the language of it's output.
        """
        Action("Write about the input and output languages of Scribe.")
        """
        I'm sure this is very annoying to read for the first few of you and even future zane I find this method of brain dumping view meditative and helpful. It does slow me down a lot but I am hoping having control of all these various endpoints of the system and metaphorically control of the inputs and outputs of a subset of the host system which to me is very exciting as in reminds me conceptually of the idea behind a compiler. Which is a program most if not all software relies on but at an explain to me like i'm five definition it is a transformation from the input languages to the output languages. Well this could be easily argued as to general but I think it gets the conceptual point across with out having to explain any details.
        """
        """
        So I tend to think about this project as sort of layering various compilers between me and the hardware. Well this is not wrong but also very false. as there is a lot of software between the presses of my keys and the text being displayed on my screen. Like a lot of complexity that has to be wrangled correctly for anything usefully to happen. This is hard to understand at least at first just the shear scale of code we have in this world. As we in ore moving towards the information era we have to adapted to how we output and input information from the sources we like to observe. There is a lot of popular in large language models which I have a lot of thoughts and emotions about which I may express here. In my mind why they are so popular to day is just how fast you get information back after providing an input. This might sound silly but think of the case you have to remember how to do some obscure thing that you do ever year or 5 and its to some extent general knowledged well a ~60% guess of what you might want the answer to be is often enough to be job our memory or hopefully make it easier to filter out the in accuracies. Well i'm sure those who actually use LLM's regular-ly will have more acuate things to say about them this is my observations of them right now. I don't use them hardly ever as I find the confidently lied to very annoying to have to filter through. And I don't wanna play 20 questions to debug my prompt just to get a believable guess and what the answer is or a few words or characters off from.
        I don't think having good fast access to correct information has to be this hard of a problem or solved in one of the most complex things I have learned about. Which again one those examples of things that are easily understood but hard to explain how it actually works in details that someone could create there own version of it if they wanted to spend hours learning how on there own. Yes with software you often of the luxury of using other peoples code but to me this again ads more indirection to manage and keep track of and I think is best avoided as adding complexity to solve a problem feels a little bit backwards but maybe goes away with experience.
        This does slow me down a lot but also gives me a lot of control and freedom and make very clear what I actually need to build in terms of being usable software and what is nice to have dream features that I could rant about for hours but are best left in a TODO or a Features tab in the plan for Scribe right now.
        """
        """
        As hopefully I have made clear Scribe is sort of a cursive project which is kind hard to wrap around brain around at first but very powerful once understand. Part of the success of computers is begin able to physically express circuits for this conceptual abstract Math idea. But I think if done correctly could be a very pleasant and powerful way to use and hopefully change that terminally to work on or have work for you. As thats what a lot of us love is other things being done for us. Which just makes out days easier. Well a lot of things like the idea of a grocery store have pretty good implementations today but could be better experience. Personal computers in the general sense IE phones, tables, laptops and even your TVs as a whole don't have this same experience usually being something that use because we have to. Well maybe not the TV because most of use those for fun in our free time. Though to some degree in terms of our physical world is the same as the rest I have included it. All the way we interact with these devices is a 100% human ideas and not something naturally evolved and more shoved in front of us and expected to detail with and learn. Which honestly is most education at this point. Which might be way a lot of people struggle to learn as we haven't change the structure of how we teach things in a way that leverages correctly our flexibility of what we can do between the time input is sent from the input device to the time that it needs to be on the screen to give the illusion of an instant fluid response.
        """
        """
        Well trying to escalate all this at first seemed impossible but as I began learning how computers actually work I began to see hope that all of this might actually be possible in a life time if I can make consistent progress on and hopefully one day get some help building and give feedback on what features that would like to have to make there days easier and allow them to spend less time on there computers and let there various computers work for them.
        """
        """
        I don't have much more than a bunch of ideas of how things could be better and a pretty big drive to try and make it better and a little bit of hope that if enough things go right that we can actually move past our current iterations of how we interact and spend our time on our computers.
        """
        Link(
            "Source file link",
            url:
                "https://github.com/zaneenders/Public/blob/scribe/Sources/Public/Pages/Blog/BlogPost/MeetScribe.swift"
        )
    }
}
