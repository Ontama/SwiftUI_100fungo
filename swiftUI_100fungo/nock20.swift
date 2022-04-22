//
//  nock20.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/22.
//

import SwiftUI

fileprivate struct Pokemon: Identifiable {
    let id = UUID()
    let name: String
}

struct nock20: View {
    @State private var sumikkos: [Sumikko] = [
        Sumikko(name: "しろくま", imageName: "sg1"),
        Sumikko(name: "ぺんぎん？", imageName: "sg2"),
        Sumikko(name: "とんかつ", imageName: "sg3"),
        Sumikko(name: "ねこ", imageName: "sg4"),
        Sumikko(name: "とかげ", imageName: "sg5"),
        Sumikko(name: "ふろしき", imageName: "sg6"),
        Sumikko(name: "ざっそう", imageName: "sg7"),
        Sumikko(name: "えびふらいのしっぽ", imageName: "sg8")]
    
    @State private var showingAlert = false
    
    var body: some View {
        List(sumikkos) { sumikko in
            Button(action: {
                showingAlert = true
            }, label: {
                Text(sumikko.name)
            }).alert(isPresented: $showingAlert) {
                Alert(title: Text("名前"), message: Text(sumikko.name), dismissButton: .default(Text("閉じる")))
            }
        }
    }
}

struct nock20_Previews: PreviewProvider {
    static var previews: some View {
        nock20()
    }
}
