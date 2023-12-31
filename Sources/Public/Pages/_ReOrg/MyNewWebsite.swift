import WebsiteBuilder

struct MyNewWebsite: BlogPageTheme {
    var blogContent: String {
        // Would like this to auto go to the next avaible heigharchy
        h2("My New Website")
        paragraphs {
            """
            I wanted to take a moment to talk about my new website and the process I used to build it. Sense 2019 when I bought my domain name I have had about 3 or more versions of my website the first being hand coded with the basics, After that I used React/Gatsby, then a Swift Static Site generator and now my own custom server. Which if you ask developer is the last thing you should do if you want to start a blog. You should just use something off the shelf and move on with your day. Well I definitely agree with the statement this is the most excited and proud of my website I have ever been sense I first published. One big difference is im actually publishing blog post. Now for a brief tour of how I built and published my website, motivations of why I did it this way and some ideas for future direction I would like to take it.
            """
        }
        h3("Swift")
        paragraphs {
            """
            To start off why I built this website using Swift. The simplest answer is its my best language. Section over lets move on. Ok well I might do a post in the future of why I like Swift over other more popular languages to use these days, I aim to only talk about a few things scoped to this project. 
            """
        }
        h4("Interop with C Code")
        paragraphs {
            """
                This is a feature of Swift I have been wanting to experiment more with and get better practice with. After taking a computer systems class at my university we built a simple web server using C and pthreads. Which was a lot less complicated then I expected. After some reading of the book and online I learned about another approach called I/O multiplexing. Which after some googling seems to be the best way to build a non blocking server as this is what tools like [nginx](https://nginxproxymanager.com) use to manage highly concurrent servers. Thought I thought I would give a go.

                Using C code from Swift is really easily for many reasons. At a high level you add a new target to include your C code and that add that as a Dependency to your Swift target and simply import and call your C code. You can checkout out explicitly how I have done this in the [project](https://github.com/zaneenders/WebsiteBuilder) that this website is built using. I also like how Swift has match the C pointer types one to one with unsafe Swift types which is exciting and kinda feels wrong to manually handle pointers in Swift. But being able to drop down to this low level and even assembly if needed is exciting as there is a lot of C code in this world.

                I will note I have scoped this project to Linux only as it makes it much simpler and other then local development I don't see I need for this to run on anything but Linux for the time being. Also a brief note on I/O multiplexing on Linux as well. This is an event driven approach to handling incoming and outgoing traffic by having the kernel tell you when a file descriptor is ready to read or write too. This used to parse incoming request and send http responses.

                After some googling around for how I/O multiplexing can be done I learned about a few approaches like `select`, `epoll` and `io_uring`. From my research I have decided to go with `epoll`. Select is the oldest and simplest way of doing event driven programming and for the most part it seems almost always use `epoll` over select except for some edge cases I read about. As for io_uring which seems to be the latest and greatest in Linux event driven programming, after reading this [document](https://github.com/apple/swift-nio/blob/8c2654c9c5d9a53107b7a4827b542806833b50e3/docs/io_uring.md#L4) from the Swift NIO folks. I have decided its probably not worth trying to learn and my silly project won't see the benefit of this newer but seemingly unfinished API. So we have a winner `epoll` it is. 

                Those of you more familiar with Swift might ask why are you going through all this work instead of just using [Swift NIO](https://github.com/apple/swift-nio/tree/8c2654c9c5d9a53107b7a4827b542806833b50e3) or [Vapor](https://vapor.codes). My only response to that is I want to learn what those are abstracting away. Im not against using NIO in the future but figure I would have a better appreciation for what its doing if I try and do the dumb thing first. I also wanted to use this as an opposite to have a more performance sensitive Swift project and maybe use more of Swift current and upcoming features.
            """
        }
        h4("Embedded Domain Specific Languages")
        paragraphs {
            """
            Well the term Domain Specific Language is a bit over used in the software world. I do think Swift is doing it best. Well my crappy server language won't be an example of its power or flexibility. I think it does serve as an example that they are easy to setup and use. Which means you can add declarative API's through out your code with out needing to do any parsing, lexing. I think the best example of Swift's Embedded DSLs is Apple newest API's like SwiftUI, Charts and Swift Data. I personally think Apple migrating there entire API to this DSL like style as it pretty much sticks a compiler between them and there developers which allows them to be very explicitly at how the API is used and enforce that with the type system. Currently this project is less then a 1000 lines of Code which I think is pretty cool to have a declarative API well dropping all the way down to a Linux Kernel function like `epoll`. I will mention the API more in the Future direction section but before then I wanted to talk about a few upcoming features I am excited to try out.
            """
        }
        h4("Swift 5.9")
        paragraphs {
            """
            This fall Swift will be releasing it's 5.9 version which of the new features comming the few I am most excited to try out is [Noncopyable types](https://github.com/apple/swift-evolution/blob/main/proposals/0390-noncopyable-structs-and-enums.md), Macros and Actor Executors. Noncopyable also known as move only types in Rust are a type enforced mechanism of introducing the idea of ownership into Swift. The example Swift gives is file descriptors. This allows you to pass around this handle to a file well the language can enforce that there is only ever one instance or copy of this data. Swift which uses Automatic Reference Counting for its current form of memory management which is pretty much fancy garbage collection, so seeing this concept of Ownership come it Swift is exciting and after reading the [Ownership manifesto](https://github.com/apple/swift/blob/main/docs/OwnershipManifesto.md) a few years ago seems to be the beginning of improving Swift's performance. I have never used Rust or a language that has move only types so im excited to experiment with this feature.

            [Macros](https://github.com/apple/swift-evolution/blob/main/visions/macros.md) this is a new idea to me but it seems very powerful. From what I have learned and read this is going to be a pretty powerful extension to Swift allowing you to extend the language in a type checked way. This will be done in three different forms; ExpressionMacro to generate single expressions, AccessorMacro which will be used to add getter and setters, and ConformanceMacro which can be used to conform a protocol. In short more syntactic surger for fancy slide ready code and more expressive API's as they would say. The included Observable Macro is interesting to me but I don't know if I will use it in this project.

            The last feature that I know the least about is [custom Actor Executors](https://github.com/apple/swift-evolution/blob/main/proposals/0392-custom-actor-executors.md) well actors and concurrency are still a new subject too me, I can't help but get excited about distributed systems and controlling a cluster of computers at a high level. Well you can read about the current version of actors and Swift's concurrency model [here](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/concurrency/). But in a short probably butchered summary, actors are fancy classes that insolate there state from the rest of the program using the async await keywords. Until now the order in which these Tasks are run is pretty much up to the runtime and you don't have any control over it, Custom Actor Executors allow you to define your own priority queue for example. The Swift NIO team has hinted that they are looking at using this, and well I don't know how I might use them fully utilizing my computer and all its cores is exciting to mean so looking forward to learning how this new API works and hopefully will be a good stepping stone to playing with the distributed actors, which are actors but with a focus on running in other Processes or on other machines.
            """
        }
        h3("Future direction")
        paragraphs {
            """
            Well this has article has been more about things in Swift I am excited to play with and having a project to do so. I am excited to be iterating on this idea and writing about my adventure. Plus this is the most excited I have ever been about my website. The code is bad and a mess right now but I have full control from epoll interface to what ever the API ends up becoming which leaves a lot of room for me to experiment and learn about different things. 

            In regards to the API currently it appears as a very overly verbose HTML and CSS Swift interface and honestly more work then its worth given the end result. The main interest in doing all this is to get practice creating DSLs/APIs in Swift. Which I think is one of its main strengths. Well I think HTML and websites using a finished version of this API would be kinda a pain and really only make sense for my friends who know Swift or curious about Swift and wanna build a very basic website. I am curious about lifting the API to something even higher level like SwiftUI which to me is something I think I could show my non technical friends how to modify and play with to make there own website. I like the idea of turning off JavaScript and rendering the page as purely static html pages. I also would like to play with websockets and maybe updating the page similar to how [phoenix live view](https://www.youtube.com/watch?v=FADQAnq0RpA) does and use a sorta of @State variables in a similar way to what SwiftUI does which is a declarative static description of your View but the property wrappers allow a way for Apple to manually manage these variables and give a pretty impressive declarative UI code. If I play the timeline out in my head I could hope to see this as an alternative to React, Vue or Next as a declarative way to build websites but also leaving room to render as a native app or native window. Who knows I could trash it in a few months and move on to something else but here is to shipping something. 

            Well the source to my website is private I have pulled most of it out as a Swift Package with an example Project if you wanna see how it works or wanna give it a try for your self. Let me know what you think. Also I need an actually name for the project if you have any ideas.    
            """
        }
    }
}
