//
//  ViewControllerKey.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/22.
//x

import UIKit
import SwiftUI

struct ViewControllerKey: EnvironmentKey {
    static var defaultValue: ViewControllerHolder {
        guard var visibleViewController = UIApplication.shared.windows.first?.rootViewController else {
            return ViewControllerHolder(nil)
        }
        while let vc = visibleViewController.presentedViewController {
            visibleViewController = vc
        }
        
        return ViewControllerHolder(visibleViewController)
    }
}

