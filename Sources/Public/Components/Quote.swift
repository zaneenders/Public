import Scribe

struct Quote: Block {
    let tile: String
    let quote: String
    let who: String
    var component: some Block {
        Group(.horizontal) {
            Text(tile).style([ForegroundColor(.blue)])
            Text(":")
            Text(quote)
            Text("-")
            Text(who)
        }
    }

    init(_ tile: String, _ quote: String, _ who: String) {
        self.tile = tile
        self.quote = quote
        self.who = who
    }
}
