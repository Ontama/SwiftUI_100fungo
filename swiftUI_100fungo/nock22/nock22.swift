//
//  nock22.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/22.
//

import SwiftUI
import UIKit

struct nock22: View {
    @Environment(\.viewController) private var viewControllerHolder: ViewControllerHolder
    @State private var isPresented = false
    
    private var viewController: UIViewController? {
        viewControllerHolder.value
    }
    
    var body: some View {
        VStack {
            Button(action: {
                isPresented = true
            }, label: {
                Text("show modal")
            })
            .sheet(isPresented: $isPresented) {
                ModalView()
            }
        }
    }
}

struct nock22_Previews: PreviewProvider {
    static var previews: some View {
        nock22()
    }
}
