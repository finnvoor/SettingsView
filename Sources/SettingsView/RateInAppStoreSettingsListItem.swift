import SwiftUI

public struct RateInAppStoreSettingsListItem: View {
    // MARK: Lifecycle

    public init(appID: String) {
        self.appID = appID
    }

    // MARK: Public

    public var body: some View {
        Link(destination: URL(string: "https://apps.apple.com/app/id\(appID)?action=write-review")!) {
            SettingsListItem(
                title: "Rate in App Store",
                icon: Image(systemName: "star.bubble.fill"),
                color: .yellow,
                external: true
            )
        }.buttonStyle(.plain)
    }

    // MARK: Internal

    let appID: String
}

#Preview {
    Form {
        RateInAppStoreSettingsListItem(appID: "1671243741")
    }
}
