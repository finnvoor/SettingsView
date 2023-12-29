import SwiftUI

public struct MastodonSettingsListItem: View {
    // MARK: Lifecycle

    public init(url: URL) {
        self.url = url
    }

    // MARK: Public

    public var body: some View {
        Link(destination: url) {
            SettingsListItem(
                title: url.lastPathComponent,
                icon: Image(.mastodon),
                color: Color(
                    red: 0x63 / 0xFF,
                    green: 0x64 / 0xFF,
                    blue: 0xFF / 0xFF
                ),
                external: true
            )
        }.buttonStyle(.plain)
    }

    // MARK: Private

    private let url: URL
}

#Preview {
    Form {
        MastodonSettingsListItem(url: URL(string: "https://mastodon.social/@finnvoorhees")!)
    }
}
