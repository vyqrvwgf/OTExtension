//
//  OTMacro.swift
//  OpalTrip
//
//  Created by lazy on 2018/2/14.
//  Copyright © 2018年 lazy. All rights reserved.
//

import UIKit

// String
public let kToken: String = "OpalTripUserToken"
public let kLanguage: String = "OpalTripLanguage"
public let kRememberPassword: String = "kRememberPassword"
public let kAccessAvailable: String = "kAccessAvailable"
public let kCurrentLanguage: String = "kCurrentLanguage"

// Height
public let kStandardHeight: CGFloat = 35.0
public let kStandardPadding: CGFloat = 15.0
public let kScreenWidth: CGFloat = UIScreen.main.bounds.width
public let kScreenHeight: CGFloat = UIScreen.main.bounds.height

// enum
public enum OTLanguage: String {
    case Hans = "OTHans"
    case En   = "OTEn"
}

public enum OTRegisterType: Int {
    case mail = 0
    case mobile = 1
}
