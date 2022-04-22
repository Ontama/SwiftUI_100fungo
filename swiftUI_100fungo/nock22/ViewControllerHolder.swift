//
//  ViewControllerHolder.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/22.
//

import UIKit

struct ViewControllerHolder {
    weak var value: UIViewController?
    
    init(_ value: UIViewController?) {
        self.value = value
    }
}
