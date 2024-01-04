import WebsiteBuilder

protocol LinearAlgebraPage: BaseThemePage, MathWebPage {
    @_Builder var linearAlgebraContent: String { get }
}

extension LinearAlgebraPage {
    var themedContent: String {
        linearAlgebraContent
    }
    var markupDescription: String {
        linearAlgebraContent
    }
}

public protocol MathWebPage: BaseThemePage {
    @_Builder var markupDescription: String { get }
}

extension MathWebPage {
    public var themedContent: String {
        markupDescription
    }

}

public protocol ZaneWebPage: BaseThemePage {
    @_Builder var markup: String { get }

}

extension ZaneWebPage {
    public var themedContent: String {
        markup
    }
}
