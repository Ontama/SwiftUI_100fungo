//
//  PasswordView.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

struct PasswordView: View {
    @ObservedObject var passwordViewModel = PasswordViewModel()
    @State var tag: Int? = nil
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("password", text: $passwordViewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            ButtonView(title: "次へ", tag: $tag, isActive: $passwordViewModel.isActive)
            NavigationLink(destination: CompleteView(), tag: 8888, selection: $tag) {
                EmptyView()
            }
            
            Spacer()
        }.onAppear{
            self.passwordViewModel.onAppear()
        }
        .padding()
        .navigationBarTitle("Password")
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}
