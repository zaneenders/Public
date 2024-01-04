import WebsiteBuilder

struct MyWebsite: ZaneWebPage {
    var markup: String {
        content
    }

    @ParagraphBuilder var content: String {
        h3(
            "This page descibes at a high level how my website is built and maybe some insight of to why."
        )
        "First I ams using Swift with the Library \(newTabLink("Swift NIO", to: "https://github.com/apple/swift-nio")). I don't love the idea of taking on too many dependencies but this one I think is worth it as It abstracts away a lot of the the weird OS abstractions like kpoll and epoll in a mostly cross platform agnostic way and also serves as a way for me to get comfortable with NIO as I have some ideas I would like to use it for and I like how composable and customizable"
        "I will share code snippets soon enough once I add that functionality. Out side of Swift NIO and fly.io I am doing everything else my self. Which some might argue is a waste of time but Im personally very happy with its direction as I have mostly full control of how to organize, compose and customize my content in a a language I am very biased towards. I think in the long run this will pay off and allow me to iterate and work fast and share more. I also really don't wanna have to think about HTML, CSS, JS and sever protocols. If I wanna share something I wanna be able to share it in a way I wanna share it"
        "To do this I am in my opinion abusing Swift's Type system, Protocols and its included result builders. Which I like to think of as putting a compiler between my content and and the required output to make the servers and web browsers do the thing. I am also not worrying about search engine optimization or any of that noise. I don't care if the LLM's or Googles crawlers can find my site. Its for people and the best way people like to hear about things is from there friends so just going to rely on the social web of the world not googles. I can also add this later as its just a matter of changing tags and adding annoying meta data."
        "So ya thats the current information on it. Long term I would like to share most of it as a library/ framework for others to use as a personal site or maybe for a business. I want to try and find a mix using the Type system and Swift's Embedded DSL's to find a nice medium between developer who want performant control and someone who just wants to write a blog about there favorite hobbies and not have to think to much about the details."
    }
}
