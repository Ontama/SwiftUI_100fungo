//
//  nock12.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

enum ShowType {
    case alert
    case sheet
}

// SwiftUIでアラートとシートを出し分ける
struct nock12: View {
    @State var numberString = ""
    @State var showingAlert: Bool = false
    @State var showingSheet: Bool = false
    
    var body: some View {
        VStack {
            TextField("input number", text:$numberString)
                .padding()
                .textFieldStyle(.roundedBorder)
            Button(action: {
                guard let _ = Double(self.numberString) else {
                    showingAlert = true
                    return
                }
                showingSheet = true
            }, label: {
                Text("Show sheet")
            })
        }
        // isPresentedはBinding<Bool>のみ
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Error"), message: Text("Please Input Number"), dismissButton: .default(Text("Close")))
        }
        .sheet(isPresented: $showingSheet) {
            Text("\(self.numberString) can convert to Double")
        }
    }
}

struct nock12_Previews: PreviewProvider {
    static var previews: some View {
        nock12()
    }
}
