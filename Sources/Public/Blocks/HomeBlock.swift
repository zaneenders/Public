import WebsiteBuilder

// Needs to be public so the server can setup from there
public struct HomeBlock: Block {

    public init() {}

    public var component: some Block {
        Button("Button")
        Text("Zane Was here")
        Text("Welcome to the rabbit hole")
        Nested()
    }
}

struct Nested: Block {
    var component: some Block {
        Text("Nested")
    }
}
