import Scribe

struct BlogPage: BlockPage {
    var component: some Block {
        Menu()
        Text("Welcome to my blog").selected()
        BlogPostMenu()
    }
}
