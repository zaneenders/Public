import WebsiteBuilder

struct ScribeContent: PageComponent {
    var contents: String {
        """
        Where Should I be adding New content/ Ideas?

        I think I want something where I can enter stuff in like I am right now and that will have a public / private component. Well I will have a personal one I work in and take notes in and a Public one. But I use the Same API in both places so When I want to make something public its just moving a file and uploading.

        So I need to export the HTML Protocol that I can use it for my private notes and also maybe parse it down to Blocks for the terminal version to do.

        I also need to pull out all the private stuff here and Maybe just have a private view website that is a copy of this one?

        So 3 layers
        Content 
            - Private
            - Public 
            (would be cool if I could just use Swift Access control)
        Server Configuration and Deployment
        Server Code

        This way I can import the private and public content, and server targets into my website Server Configuration layer configure, build and deploy everything. And keep the server code public and part of the content code public.
        """
    }
}
