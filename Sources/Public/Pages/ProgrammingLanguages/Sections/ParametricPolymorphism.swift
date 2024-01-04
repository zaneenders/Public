import WebsiteBuilder

struct ParametricPolymorphism: PLPage {
    var plContent: String {
        h3("\(Self.self)")
        "Identify function, A function that just returns its input"
        """
        FUN parametrizes over a type
        FUN abstracts over a type

        forall function?
        - forall of a given type. in swift this would be a function that takes in an `any` of a type.

        A type is valid if it is defined in its environment. 
        A component type is valid if its composite types are defined.
        """
    }
}
