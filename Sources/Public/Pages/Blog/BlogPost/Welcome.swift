import Scribe

struct Welcome: BlogPost {
    var content: some Block {
        Text("Welcome").selected()
        Text(
            """
            Hello welcome to my Blog and my new website. It doesn't look like much right now but i'm very excited about it. It has keyboard shortcuts but they aren't very good I am also in the process of supporting game controller support.
            """)
    }
}
