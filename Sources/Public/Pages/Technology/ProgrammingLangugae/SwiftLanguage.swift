import Scribe

struct SwiftLanguage: BlockPage {
    var component: some Block {
        Menu()
        Text("It's pretty good you should try it 😉.").selected()
        Open("DocC Github Pages", .page(DocCGitHubPages.self))
    }
}

// https://respawn.io/posts/swift-docc-github-actions
struct DocCGitHubPages: BlockPage {
    var component: some Block {
        "Generate Docs: command"
        "swift package --allow-writing-to-directory ./gh-pages/docs generate-documentation --target Scribe --output-path ./gh-pages/docs --disable-indexing --transform-for-static-hosting  --hosting-base-path scribe --include-extended-types"
        "Preview Docs: command"
        "swift package --disable-sandbox preview-documentation --target Scribe --include-extended-types"
        "Don't forget to look at the link"
        "Github Actions.yml"
        """
        name: DocC GitHub action
        on:
        push:
        
        concurrency:
        group: "pages"
        cancel-in-progress: false
        
        jobs:
        build:
            runs-on: ubuntu-latest
            
            steps:
            - name: Checkout
            uses: actions/checkout@v3
            with:
                fetch-depth: 0
        
            - name: Set up Swift environment
            uses: swift-actions/setup-swift@v2

            - name: Setup Git worktree
            run: |
                git fetch
                git worktree add --checkout gh-pages origin/gh-pages
            # Build the DocC website using swiftPM.
            - name: Build docs with SwiftPM
            run: |
                swift package --allow-writing-to-directory ./gh-pages/docs \
                generate-documentation --target Scribe \
                --output-path ./gh-pages/docs \
                --disable-indexing \
                --transform-for-static-hosting \
                --hosting-base-path scribe \
                --include-extended-types
        
            - name: Commit and push generated documentation
            run: |
                cd gh-pages
                git add docs
                git config --local user.email "github-actions[bot]@users.noreply.github.com"
                git config --local user.name "github-actions[bot]"
                git commit -a -m "Updating Docs for github-pages"
                git push origin HEAD:gh-pages
                cd ..
                git worktree remove gh-pages
        """
    }
}
