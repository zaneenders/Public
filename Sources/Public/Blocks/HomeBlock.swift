import WebsiteBuilder

public struct HomeBlock: Block {
    public init() {}
    public var component: some Block {
        Text("Zane Was here")
        Text("Welcome to the rabbit hole")
    }
}
