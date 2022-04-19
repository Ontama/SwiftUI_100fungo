//
//  nock6.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

//画面遷移時に値を渡す
struct nock6: View {
    let fruits = ["Apple", "Banana", "Orange", "Grape", "Cherry", "Peach"]
    var body: some View {
        NavigationView {
            List(fruits, id: \.self) { fruit in
                NavigationLink(destination: SecondView(fruit: fruit), label: {
                    Text(fruit)
                })
                
            }
        }
    }
}

struct nock6_Previews: PreviewProvider {
    static var previews: some View {
        nock6()
    }
}
