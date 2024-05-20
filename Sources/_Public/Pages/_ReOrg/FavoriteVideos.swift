import WebsiteBuilder

struct FavoriteVideos: BaseThemePage {
    var themedContent: String {
        var output = ""
        output.append(h2("Favorite Videos"))
        for fav in FavoriteVideos.favoriteVideos {
            output.append(pTag(newTabLink(fav.key, to: fav.value)))
        }
        return output
    }

    private static let favoriteVideos = [
        "RubyConf Mini 2022: Keynote: Learning DNS by Julia Evans":
            "https://www.youtube.com/watch?v=tsxjNsFu_2g",
        "You can be a kernel hacker! by Julia Evans":
            "https://www.youtube.com/watch?v=0IQlpFWTFbM",
        " Types, and why you should care - Ron Minsky ":
            "https://www.youtube.com/watch?v=yVuEPwNuCHw",
        "The computer revolution hasnt happened yet - Alan Kay":
            "https://www.youtube.com/watch?v=oKg1hTOQXoY",
        "Data-Oriented Design and C++ - Mike Acton":
            "https://www.youtube.com/watch?v=rX0ItVEVjHc",
        "Preventing the Collapse of Civilization - Jonathan Blow":
            "https://www.youtube.com/watch?v=ZSRHeXYDLko",
        "The Thirty Million Line Problem - Casey Muratori":
            "https://www.youtube.com/watch?v=kZRE7HIO3vk",
        "Math's Fundamental Flaw":
            "https://www.youtube.com/watch?v=HeQX2HjkcNo",
        "Group theory, abstraction, and the 196,883-dimensional monster":
            "https://www.youtube.com/watch?v=mH0oCDa74tE",
        "This equation will change how you see the world (the logistic map)":
            "https://www.youtube.com/watch?v=ovJcsL7vyrk",
        "Chaos: The Science of the Butterfly Effect":
            "https://youtu.be/fDek6cYijxI?feature=shared",
        "The Remarkable Story Behind The Most Important Algorithm Of All Time":
            "https://www.youtube.com/watch?v=nmgFG7PUHfo",
        "The Most Misunderstood Concept in Physics":
            "https://www.youtube.com/watch?v=DxL2HoqLbyA",
        "Triangle of Power": "https://youtu.be/sULa9Lc4pck?feature=shared",
        "Bret Victor - Inventing on Principle":
            "https://www.youtube.com/watch?v=PUv66718DII",
        "Vsause Types of Squares": "https://www.youtube.com/shorts/asTywgpiSkQ",
        "SiMD Json": "https://www.youtube.com/watch?v=wlvKAT7SZIQ",
        "Preventing the collapse of civilization":
            "https://www.youtube.com/watch?v=ZSRHeXYDLko",
        "Alan Kay at OOPSLA 1997 - The computer revolution hasnt happened yet":
            "https://www.youtube.com/watch?v=oKg1hTOQXoY",
        "Law of Leaky Abstractions":
            "https://www.joelonsoftware.com/2002/11/11/the-law-of-leaky-abstractions/",
        "2019 LLVM Developers Meeting: S. Abdulrasool Porting by a 1000 Patches: Bringing Swift to Windows":
            "https://www.youtube.com/watch?v=Zjlxa1NIfJc&t=1s",
        "2022 LLVM Dev Mtg: Implementing Language Support for ABI-Stable wSoftware Evolution in Swift and LLVM":
            "https://www.youtube.com/watch?v=MgPBetJWkmc",
        "OPEN GL - Allen School Distinguished Lecture: Pat Hanrahan (May 16, 2023)":
            "https://www.youtube.com/watch?v=uL4H1ct_-dI",
        "How Crash Bandicoot Hacked The Original Playstation":
            "https://www.youtube.com/watch?v=izxXGuVL21o",
    ]
}
