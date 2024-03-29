import SwiftUI

public struct LinkSettingsListItem: View {
    // MARK: Lifecycle

    public init(
        title: some StringProtocol,
        icon: Image,
        color: Color,
        destination: URL
    ) {
        self.title = title
        self.icon = icon
        self.color = color
        self.destination = destination
    }

    // MARK: Public

    public var body: some View {
        Button(action: {
            UIApplication.shared.open(destination)
        }) {
            SettingsListItem(title: title, icon: icon, color: color, external: true)
        }
        #if !os(visionOS)
        .buttonStyle(.plain)
        #endif
    }

    // MARK: Internal

    let title: any StringProtocol
    let icon: Image
    let color: Color
    let destination: URL
}
