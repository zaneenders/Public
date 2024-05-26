import Scribe

struct Welcome: BlogPost {
    var content: some Block {
        Text("Welcome").selected()
    }
}
