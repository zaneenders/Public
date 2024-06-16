import Scribe
import WSServer
import _ScribeExtras

public struct HomePage: BlockPage {

    public init() {}

    @State var left = 0
    @State var right = 0
    public var component: some Block {
        Menu()
        Text("Zane Enders").selected()
        Text("Welcome to my website. It's a subtly different 😉.")
        Action("TODO add inline Link")
        Text("Check out my latest blog post.")
        Open("Meet Scribe", .page(MeetScribe.self)).style(
            DefaultTheme.linkStyle)
        Action("TODO Fix very buggy display of blog post.")
    }
}

public enum MyDetails {
    // Used for Server setup/ config,
    // Maybe this could be split out as a theme?
    public static let site = SiteDetails(
        title: "Zane Was Here",
        selected: DefaultTheme.selected, toplevel: DefaultTheme.background)

    public static let url = "zaneenders.com"
}
