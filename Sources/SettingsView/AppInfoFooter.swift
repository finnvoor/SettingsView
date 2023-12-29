import SwiftUI
import UpdateAvailableButton

public struct AppInfoFooter: View {
    // MARK: Lifecycle

    public init() {}

    // MARK: Public

    public var body: some View {
        VStack(spacing: 6) {
            HStack {
                Spacer()
                Text("\(Bundle.main.humanReadableCopyright ?? "") \(Bundle.main.name ?? "") \(Bundle.main.shortVersionString ?? "")")
                Spacer()
            }
            UpdateAvailableButton()
        }
    }
}

#Preview {
    Form {
        Section {} footer: {
            AppInfoFooter()
        }
    }
}
