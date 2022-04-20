//
//  EmailView.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

struct EmailView: View {
    @ObservedObject var emailViewModel = EmailViewModel()
    @State var tag: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("email", text: $emailViewModel.email)
                    .textFieldStyle(.roundedBorder)
                ButtonView(title: "次へ", tag: $tag, isActive: $emailViewModel.isActive)
                NavigationLink(destination: PasswordView(), tag: 8888, selection: $tag) {
                    EmptyView()
                }
            }
        }
        .onAppear {
            emailViewModel.onApper()
        }
        .padding()
        .navigationBarTitle("Email")
        

    }
    
}

struct EmailView_Previews: PreviewProvider {
    static var previews: some View {
        EmailView()
    }
}
