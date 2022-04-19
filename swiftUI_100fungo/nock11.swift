//
//  nock11.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

//Button内の画像やテキストの色を変えない
struct nock11: View {
    @State var text = "Snorlax"
    
    var body: some View {
        VStack {
            Text(text)
            HStack {
                Button(action: {
                    self.text = "Forever"
                }, label: {
                    Image("sg1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                })
                Text("tap me")
                
            }
            .padding()
            .border(.gray, width: 2)
            
        }
    }
}

struct nock11_Previews: PreviewProvider {
    static var previews: some View {
        nock11()
    }
}
