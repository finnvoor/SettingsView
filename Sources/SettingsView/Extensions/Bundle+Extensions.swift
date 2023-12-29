import Foundation

extension Bundle {
    var name: String? {
        object(forInfoDictionaryKey: "CFBundleName") as? String
    }

    var shortVersionString: String? {
        object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    }

    var humanReadableCopyright: String? {
        object(forInfoDictionaryKey: "NSHumanReadableCopyright") as? String
    }
}
