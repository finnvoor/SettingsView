import MarkdownUI
import SwiftUI

public struct AcknowledgmentsView: View {
    // MARK: Lifecycle

    public init(acknowledgments: URL) {
        self.acknowledgments = (try? String(contentsOf: acknowledgments)) ?? ""
    }

    // MARK: Public

    public var body: some View {
        ScrollView {
            Markdown(acknowledgments)
                .markdownBlockStyle(\.codeBlock) { configuration in
                    configuration.label
                }
                .padding()
        }.navigationTitle("Thanks to…")
    }

    // MARK: Internal

    let acknowledgments: String
}
