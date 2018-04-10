//
//  OTBundleExtension.swift
//  OpalTrip
//
//  Created by lazy on 2018/2/15.
//  Copyright © 2018年 lazy. All rights reserved.
//

import UIKit
import OTMacro

public extension Bundle {
    
    public class func localizedString(text: String) -> String {
        var tableName: String = OTLanguage.Hans.rawValue
        let currentLanguageRawValue = UserDefaults.standard.string(forKey: kCurrentLanguage) ?? "OTEn"
        let currentLanguage = OTLanguage(rawValue: currentLanguageRawValue) ?? .En
        switch currentLanguage {
        case .Hans:
            tableName = OTLanguage.Hans.rawValue
        case .En:
            tableName = OTLanguage.En.rawValue
        }
        return NSLocalizedString(text, tableName: tableName, bundle: Bundle.main, value: "", comment: "")
    }
}

public extension Bundle {
    public class var namespace: String {
        get {
            return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? "OpalTrip"
        }
    }
}

public extension Bundle {
    
    public class func loadJson(source: String) -> Any? {
        if let path = Bundle.main.path(forResource: source, ofType: "json") {
            let fileURL = URL(fileURLWithPath: path)
            do {
                let data = try Data.init(contentsOf: fileURL)
                return try JSONSerialization.jsonObject(with: data, options: .init(rawValue: 0))
            } catch {
                return nil
            }
        }
        return nil
    }
}
