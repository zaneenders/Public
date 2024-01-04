import WebsiteBuilder

struct ScribeManifesto: ZaneWebPage {
    var markup: String {
        content
    }

    @ParagraphBuilder var content: String {
        Scribe.link
        """
        This page servers as roadmap / manifesto for Scribe
        """
        h3("Motivation for Scribe")
        """
        Scribe started as a personal project to build a text editor for my self and part of my personal motivation to finnish my CS degree. As I quickly learned building a text editor is very hard, but over the next 3 years I learned more and more and have been able to put together what it is now. This doesn't look like much but I have achieved what I was trying to which was being able to visually traverse a graph that was declaratively built as well as have built in actions/ buttons.
        """
        """
        My biggest frustration with software is the little discrepancies between different GUI's or how they change or break overtime well I point no blame at the developers working hard to build all this software and tools we have learned to love. I think it is time to invert the problem and start working down. Starting with a open source declarative cross platform composable API. Wow that was a lot of words that might not mean anything but let me expand.
        """
        """
        Declarative API's have proven to be very popular for user interfaces. Especially on the web and some rare cases native apis. Well the end goal of all the applications and tools built on those is I have a problem I would like to solve with software and it needs a less scary way to someone who isn't as technical to interact with it. Thats where my idea for basic composable API comes in.
        """
        h3("Composable API")
        """
        What do I mean by composable API. Well as I described it to my friends. Lego blocks or building blocks if there is some legal reason I can't say that. Anyway the idea that you can take things and compose them up into bigger ideas. Software is built on this idea but its also up to developers to do so. Well Want I want to server is an API that someone could learn as there introduction to programming. Thus the abstraction of blocks. A block in its root or most basic form is just a symbol on the screen. Or as I see it the information we try to share view and work with on the screen. Well this may not sound like enough I believe it is a good staring place to cover 90% of what most people use a computer for which is reading and creating information. We all send messages emails or other more modern messaging ideas. View information mostly on the web. And to the webs amazing credit It is a huge success with how much information we share every day.
        """
        """
        The grammar for a Block is recursive in that composing two blocks together forms yet another block that can be composed again with another block. This in computer science is also know as a tree structure, Grammar. 
        """
        """
        The other building basic building block I think all Graphical User interfaces share is the idea of a button. Or a Symbol which performs and action when interacted with. With the composition of these two ideas and a visual way of distinguishing between the two. I think that serves as a good staring primitives to building a UI. And if you look in the project that is pretty much what I have implemented so for the terminal as a proof of concept and way of making sure the idea works.
        """
        h3("Interaction")
        """
        I eluded to this a bit but how do Interact with these blocks that I have composed together and Scribe as layed out on the screen. Well I personally think the mouse is very slow way to interact with a computer so I have not included that in this current vision. But I have some ideas of how do to so. No the main interaction I have chosen to start with is the keyboard and keyboard shortcuts. I originally got the idea from being fascinated with keyboard online terminal text editors and watching how fast and fluent people could be with them as the blitzed around the code base. So I wanted to build that. But using something more declarative and easier for first year CS students to pick up and use.
        """
        """
        To me everything on the screen is arrange in a sort of hierarchy and visual organize in groups. So given any symbol or collection of symbols everything else is either a move in, out, up, down, left or right. This is harder to explain in text and easier with graphics so I will aim to add a visual depiction of what I mean. In short though everything on the screen is a a tree with the root being the entire screen and moving all the way down towards the character level. How this is done or navigated will need to be expressed in API's but I hope to provide a sane default of this concept so you can hack to gether a few blocks and navigate as you would expect to match the graph you described in code.
        """
        """
        Mouse support I think could be added by simply mapping where the cursor is in in the tree based on its screen position and how the tree is being projected on the screen. Easier said than done but like I said not the primary focus.
        """
        """
        What are the keybindings going to be? Well Honestly I don't know and honestly don't care what you use. Everyone is different and telling everyone to use vim bindings seems kinda mean to new comers who might have a different idea for what keyboard navigation could be. I would also like to keep control support in mind. Given the primitives I have described I think this could also be done used pretty easily with a control opening a new default for interacting with UI. Well I don't think controllers are perfect they are less intimidating then a keyboard and at times a very good input device.
        """
        h3("The plan / road map")
        """
        Ok so maybe you follow if not let me know I plan to elaborate on this idea to better explain how it looks in my head. If you do follow well here is my high level plan on how to there. I have currently roughed out basic movement and basic blocks in terminal version. to try and get the underlying basic mechanics working. Well this is very buggy I haven't encounter anything that is a project stopper. So I am pushing forward with this plan.
        """
        """
        As I have showed this to a few friends most kinda give me a blank stare like ok I don't get it. Which fair enough being shown some colored ASCII text is nothing to phone the media about but I wasn't really worrying about the UI part of this UI framework and more what the basic API could be. And well I don't think its perfect I think its a good place to start and better API's can be surfaced as time goes on. As that is one cool part of embedded DSL's in Swift is that you have a type safe boundary between you and the consumers of your API. So I can surface Image support or custom Symbols using maybe SVG descriptions or idk.
        """
        """
        What my short term plan to get something working and more impressive then a blinking terminal is use Electron and the web. HTML, CSS, and Javascript for all there flaws have achieved something very amazing. With the composition of them creating a rich API for drawing on the screen. Unfortunately this is kinda confusing to learn and you don't really have any guard rails to nudge you a long like a type system or walls in a video game.
        """
        """
        This is where Swift comes in. It's embedded DSL's actual use the type system which is limited in the grand scheme of type systems but I think will server good enough for a UI/UX framework/ library. Because Swift lets you build embedded languages in the form of Domain Specific languages(DSLs) well you can have embedded compilers/interpreters which means I can take my little API and build on top of it to output HTML, CSS, and JS as needed to sorta fake / prototype the idea as I have learned rendering text is very hard so why not leverage the browsers and have spend 1,000s of hours figuring this out in a platform agnostic way.
        """
        """
        No You may ask ok cool by generating HTML, CSS and Javascript from Swift seems like a round about way. And if you want types that bad there is type script. You are right on all of these sides. But these are just a stepping stone. My long term plan after I figure out some more of the details and hopefully some friends to help with this ambitions plan is to actually jump around the web intermediate languages and talk to the underlying C/C++ that do all the actual work of drawing to the screen.
        """
        """
        This is recently starting to be possible with Swift introducing Bidirectional interop with C++ and interop with C. As I currently don't have much experience with this at the time of writing this I can't talk much to how it works but from what I have read and learned online it seems very promising and with cross compilation coming down the pipe for Swift I am hoping that all this can compose as a very primitive cross platform framework for UI/UX development.
        """
        h3("End remarks")
        """
        At the time of writing this I am sure I have made many typos and glossed over many details that I am happy to hash out in more detail as needed so don't be afraid to ask. I know this is ambitions but I just want a simple composable language to move and put elements on the screen with. I personal think dog-fooding is the only way to build working software. And I am personally using what I have made every day so I know where it breaks and what I need to fix next.
        """
        """
        I personally wanna see this used by developers, friends and family to customize there own interface for there computer. Well developers will have to do most of the hard work of plumping everything together. My thought and hope Is I can put a configuration to gether for a friend or family member and they can use it and not have to think much about it and if they give me permission maybe personally author updates for them. Sense the API line will simply be where what symbols go on the screen and how they move around them. That leaves developers to move things around with more freedom and we can surface some idea of deprecation. Which is an idea that largely eludes the geneal public but I think is good and needs to be surfaced.
        """
        """
        I also think this could be a good introduction to programming in hey I just wanna put this on the right instead of the left. Well they can crack open the scary source code which is a type safe API that you can surfaced additional compiler warnings with so They are very unlikely to mess anything up when moving things around on the screen. Which most of my friends who are designers thats all they want. Is an easy playground to move things around on the screen. Or simply put draw on the screen. If they want more control the have an entry point to programming that matches the abstraction and can start being filtering data and other basic excel like ideas with out needing a 4 year degree to understand what a compiler is how much harder graphics is than it looks.
        """
        """
        A personal stretch goal of mine is once I have enough working to build parse and edit text files using this UI framework is on linux lower it as the main UI for the OS and have a Type safe wall between the UI of the OS and OS code that handles the rendering, memory management and other more complicated details. But keep the idea of user level programs for piping and filtering data around. Can always surface more API's by asking them to import library like many developers are already use to.
        """
        """
        So ya thats the high level plan hope you join me and maybe we have a new safe boundary between being able to control your computer and try out new crazy allocators or file system ideas. Do you need a file system if the entire UI is exposed as tree structure?
        """
    }
}
