import SwiftUI

public struct SettingsView<Content: View>: View {
    // MARK: Lifecycle

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    // MARK: Public

    public var body: some View {
        Form {
            content
        }
    }

    // MARK: Internal

    let content: Content
}

#Preview {
    SettingsView {
        Label("Hello", systemImage: "xmark")
    }
}
