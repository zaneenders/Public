import WebsiteBuilder

struct _Swift: BaseThemePage {
    var themedContent: String {
        "Well this is a cool swift thing you can use it as a wrapper to sub projects as if you call `swift run <executable-name>` in any sub directorys of swift will intercept it correctly and run the command. Which I think is really cool as I can now write little automations in Swift for something I am currently working on."
        "Swift is my <span title= \"December 2023\" style=\"text-decoration: underline;\">current</span> favorite programming language."
        h3("Swift ABI")
        "Well unfortunately this is only currently supported on MacOS. Which after you learn how hard and complicated ABI is you understand why. Though I still think this is very underate."
        "I personally think it would be cool for all languages to more towards a new ABI. Will never happen because so many difference in opinions but Ugh the current ABI seems like a complete dumpster fire. So why not try and just centralize. Getting all languages to talk to each other better would be a huge win! Then everyone can solve problems in there own tongue and not have to communicate in english when they would rather speak french. Or for me help in Swift and build momentum where I have it. I also personally final language context switches very hard and often confusing and easy to make mistakes. Languages that look the same don't often behave the same."
        "Its also really cool how Swift and C++ can talk. I think this is also underrated.  Yes C++ can be done right and fast but there are more bad programmers in the world then good ones and having a type system to enforce the decisions being made is a good thing. Even If you have to pay an overhead for what seems like a very fat runtime. Though Apple does seem smart for just baking that into the OS Im sure they can get some runtime performance wins by keep the runtime in cache between app switches and will probably just get better as the sync up on Swift."
        "Its was also mentioned in this video that LLVM can optimize across C++ and Swift which seems wicked cool!"
        "I'm Personally excited to learn rust and also see how it's move only types compare to Swift's new ones and what changes they do learning from what Rust has done."
        "Last thing I wanna note that I personally really like out Swift. It's seems to be pretty fast yet I don't have to think about pointers, Int64 or any of these details that are easy to screw up at first. Yes learning them makes you a better programmer but I also don't wanna spend a day tracking down some silly bug. The over head I give to the Swift compiler engineers to most likely make my code faster then a newbie like me thinking I can make C, C++ or rust just as fast seem totally worth it. After I get a few years under my belt Im sure I will know how to do it right the first time. Also the areas of Software I wanna work I don't wanna think about low level details unless I have too. Assembly languages also feel like something we need to move. But you need a really fat wallet or a friend who trust you with a fat wallet to make and big changes there not to mention you have to convince the industry to use your new thing you spend billions on and people don't like change."
        h4("Related Information")
        newTabLink(
            "How Swift Achieved Dynamic Linking Where Rust Couldn't",
            to: "https://faultlore.com/blah/swift-abi/")
        newTabLink(
            "\"Swift as C++ Successor in FoundationDB\" by Konrad Malawski",
            to: "https://www.youtube.com/watch?v=ZQc9-seU-5k")
    }
}
