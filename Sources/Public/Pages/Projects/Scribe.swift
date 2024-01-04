import WebsiteBuilder

struct Scribe: BaseThemePage {

    var subPages: [WebPage.Type] = [
        ScribeManifesto.self
    ]

    var themedContent: String {
        content
    }

    @ParagraphBuilder var content: String {
        newTabLink(h2("Scribe"), to: "https://github.com/zaneenders/Scribe")
        #if DEBUG
            h3(ScribeManifesto.link)
            ScribeContent()
        #endif
        "Scribe my vision and attempt for a better user facing OS abstractions."
        "I think its kinda a mistake that there are really only 2 and a half Operating systems in the world. MacOS, Windows and this other weird thing called Linux that runs all the severs but not many people use as there main computer because its kinda a mess. I also think that has to do with ABI and C, but rant for a another time."
        "This idea builds and simplifies existing embedded DSL's. As I have the luxury of not having to worry about backwards compatibility. So I hope I can make a simpler abstraction that is more composable and better to build on in both directions."
        "I also am trying to match/ combine a few structures into one in a hope to remove indirection and keep the end result more consistent. One of my personal grips with modern software is all the context shifts and unnecessary rule changes."
        h2("Big Goals")
        h3("A text editor")
        "Most of what we do or at least need to do with computers is read and edit text. Messages, Emails, Reading web pages, Sharing what we have learned. Text is our current main form of information sharing, and its one of the hardest things to work with in computers and the current structure of world we end up with a bunch of slightly different takes on the same thing because everyone has different good ideas of what and how this should be done. Whats annoying is that what works in one app doesn't work in another so if you learn a new feature in one app and how to use it well that probably won't apply to another app or context."
        "Well for how personal and highly used text is I think that you should have and customized what text interface for the entire OS"
        h3("Automation and Keyboard shortcuts")
        "I used to work at a retail ecommerce job and so much of that job is repetitive automatable computer work. Which maybe you could argue that AI will save us here but I think thats wrong in the general case. What I think we need is an easy way for people to say hey this is what I want you to do computer now do it again for these 10,000 items. So design and build an OS abstraction that supports this. My first basic Idea for this is to fuse an existing programming language into the OS and just use that instead of having to build another scripting languages. I think the world has proven that language design is insanely hard to get right. So why reinvent that wheel. Aside I also think we need to figure out how to get programming languages to correctly talk to each other which I mention more in my page about \(_Swift.link). Why keyboard shortcuts well that is the only semi automation most people kinda understand. Why drag the mouse across the entire screen and introduce all that indirection and non determinism when you can just press a button or two. Touch screens are hard to get right but buttons are much easier from both sides of the software."
        h3("Customizable and composable")
        "We are all lazy in some respect. I'm sure the type A's of the world are arguing that they aren't but even delegation to an App or an assistant can sorta be viewed as lazy as you personally aren't doing the work. This isn't a bad thing the world is too complicated and you shouldn't have to spend your entire life taking care of everything your self. You should be able to delegate and trust to some degree that it gets done. We already do this with grocery stores, and other companies. You give them money in an exchange for a service being done. Well with software we have largely screwed up in that we spend more time managing different apps instead of focusing on the work that needs to be done. The easiest example if think of a friend you have more then one way you message or share information with them. Work messaging app, email, social media. So niche app maybe focused on exercise or sports. You might like having things in your digital life but I personally find it annoying to have a conversation over 3 different apps when you are trying to talk to one person about 3 different things."
        "As for composable, well as people don't wanna repeat them selves well people should be able to share solutions they have figured out or methods they have worked with. We do this every day sometimes explicitly and some times implicitly. Think of the last time someone showed you something that started saving your time, money or simply just made you happy. Well the software we use everyday should also let us share and compose there as well. An example is how much of an accidental buzz it was when apple introduced shortcuts and you could limitedly change how your phone looked. People wanna make there software weird so let them."
        // Turn this in to a sub section or faded indented text
        "A short remark to all the developers laughing good luck kid. Well as most of the world has rightfully emotionally ignored, Swift amongst other things was designed for this. Apple is transitioning the entire interface or API as some prefer of its platforms into a domain specific language behind a type safe barrier. So you can introduce weird abstractions and languages to communicate ideas and detach that from the implementation of how it actually works."
        "Also why is it so hard to set a timer and say hey I want phone to vibrate until I do X. Or when I get a message from someone with this word in it sound all the alarms but don't make any noise otherwise oh but only do this between 2 - 2:25pm on every 5 thursday of the month. Also why can't I have my phone auto send happy birthday to my favorites."
        "I sure you have your own frustrations and have 100s of ideas for would be nice or why can't we do this. Some of you may not because the world has largely convinced of us that everything needs to be an App. Well the same hardware makes video games so use your wildest imagination from your favorite fantasy or personal escape. The world needs more variety and sharing of ideas not for profit tech giant run by the rich making decisions about what I personally should do. We are all different in our own way."
        h3("Conclusion")
        "Maybe im out side the norm as always but I just feel like tech really hasn't improved much in the last 10 years. Most of the money seems to go towards social media and add targeting and I find it kinda crepy how much we are tracked online. Computers aren't crepy they are just fastest then most people can understand."
    }
}
