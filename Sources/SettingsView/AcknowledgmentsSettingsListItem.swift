import SwiftUI

public struct AcknowledgmentsSettingsListItem: View {
    // MARK: Lifecycle

    public init(acknowledgments: URL) {
        self.acknowledgments = acknowledgments
    }

    // MARK: Public

    public var body: some View {
        NavigationLink(destination: AcknowledgmentsView(acknowledgments: acknowledgments)) {
            SettingsListItem(
                title: "Acknowledgments",
                icon: Image(systemName: "text.book.closed.fill"),
                color: .pink
            )
        }
    }

    // MARK: Private

    private let acknowledgments: URL
}
