import SwiftUI

public struct SettingsListItem: View {
    // MARK: Lifecycle

    public init(
        title: some StringProtocol,
        icon: Image,
        color: Color,
        external: Bool = false
    ) {
        self.title = title
        self.icon = icon
        self.color = color
        self.external = external
    }

    // MARK: Public

    public var body: some View {
        HStack {
            Label {
                Text(title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWeight(.medium)
            } icon: {
                ZStack {
                    Image(systemName: "app.fill")
                        .font(.system(size: CGFloat(26)))
                        .foregroundColor(color)
                        .frame(width: 26, height: 26)
                    icon
                        .font(.system(size: CGFloat(14)))
                        .foregroundColor(.white)
                }
            }.contentShape(Rectangle())
            if external {
                Spacer()
                Image(systemName: "arrow.up.right")
                    .foregroundStyle(.tertiary)
                    .imageScale(.small)
                    .fontWeight(.medium)
            }
        }.contentShape(Rectangle())
    }

    // MARK: Internal

    let title: any StringProtocol
    let icon: Image
    let color: Color
    let external: Bool
}

#Preview {
    Form {
        SettingsListItem(
            title: "App Icon",
            icon: Image(systemName: "app.fill"),
            color: .blue
        )
        SettingsListItem(
            title: "Rate in App Store",
            icon: Image(systemName: "star.bubble.fill"),
            color: .yellow,
            external: true
        )
    }
}
