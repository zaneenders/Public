import Tags
import WebsiteBuilder

struct TypeInference: PLPage {
    var plContent: String {

        h3("Type Inference")
        """
        Figuring out the type based on its context.
        """
        """
        This is a pretty natural thing for humans to do but can be hard for computers to do.
        """
        "To avoid self reference errors. We can use a occurs function that defers assigning a type based on if the type contains its self."
        h4("Unify function")
        """
        Takes an unknown type and attempts to associate it with something else.

        Unify calls resolve.

        Can modify types passed in if there is not a type set.

        Will recrusive down the types if needed
        """
        h4("Resolve Function")
        "Fills in unknown types"
        Question("What is the difference between Unify and Resolve again?")
        h3("lecture Notes 23-11-27")
        """
        Professor Flatt -
        You never want resolve in your type checker
        Never use == for comparing types.
        only use typecheck and resolve.
        """
    }
}
