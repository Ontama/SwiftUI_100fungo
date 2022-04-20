//
//  PasswordViewModel.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import Foundation

class PasswordViewModel: ObservableObject {
    @Published var password = "" {
        didSet {
            UserDefaults.standard.set(password, forKey: passwordKey)
            isActive = password.count > 8
        }
    }
    
    @Published var isActive = false
    private var isFirstAppear = true
    private let passwordKey = "password"
    
    func onAppear() {
        guard isFirstAppear else { return }
        isFirstAppear = false
        
        guard let password = UserDefaults.standard.string(forKey: passwordKey) else { return }
        self.password = password
        
        if password.count > 8 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.isActive = true
            }
        }
    }
}
