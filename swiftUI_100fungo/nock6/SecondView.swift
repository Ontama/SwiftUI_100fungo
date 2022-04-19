//
//  SecondView.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

struct SecondView: View {
    let fruit: String
    
    var body: some View {
        Text(fruit)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(fruit: "orange")
    }
}
