//
//  ModalView.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/22.
//

import SwiftUI
import UIKit

struct ModalView: View {
    @Environment(\.viewController) private var viewControllerHolder: ViewControllerHolder
    
    private var viewController: UIViewController? {
        self.viewControllerHolder.value
    }
    
    var body: some View {
        NavigationView {
            
            Button(action: {
                viewController?.dismiss(animated: true, completion: nil)
            }) {
                Text("Dismiss")
            }
            .onAppear {
                viewController?.isModalInPresentation = true
            }
        }
    }
}
