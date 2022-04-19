//
//  nock10.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

// SwiftUI でアラートを表示する
struct nock10: View {
    @State var showAlert = false
    var body: some View {
        Button(action: {
            showAlert.toggle()
        }, label: {
            Text("Push me!")
        }).alert(isPresented: self.$showAlert) {
            Alert(title: Text("タイトル"),
                  message: Text("メッセージ"),
                  primaryButton: .default(Text("その1")){
                print("その1")
            },
                  secondaryButton: .destructive(Text("その2")){
                print("その2")
            })
        }
                  
    }
}

struct nock10_Previews: PreviewProvider {
    static var previews: some View {
        nock10()
    }
}
