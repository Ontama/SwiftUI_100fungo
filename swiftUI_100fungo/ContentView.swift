//
//  ContentView.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("sg1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 200)
                .background(.red)
            Image("sg1")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 250)
                .clipped()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
