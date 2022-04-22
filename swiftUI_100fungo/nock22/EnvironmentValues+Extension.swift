//
//  EnvironmentValues+Extension.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/22.
//

import UIKit
import SwiftUI

extension EnvironmentValues {
    var viewController: ViewControllerHolder {
        get { self[ViewControllerKey.self] }
        set { self[ViewControllerKey.self] = newValue }
    }
}
