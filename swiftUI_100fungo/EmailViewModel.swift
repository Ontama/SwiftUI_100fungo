//
//  EmailViewModel.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import Foundation

final class EmailViewModel: ObservableObject {
    @Published var email = "" {
        didSet {
            UserDefaults.standard.set(email, forKey: emailkey)
            isActive = email.count > 8
            print(email)
        }
    }
    private let emailkey = "email"
    
    @Published var isActive = false
    private var isFirstApper = true
    
    func onApper() {
        guard isFirstApper else { return }
        isFirstApper = false
        
        guard let email = UserDefaults.standard.string(forKey: emailkey) else { return }
        self.email = email
        
        // fixme:条件に合えば自動遷移
        if email.count > 8 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { [weak self] in
                self?.isActive = true
            })
        }
    }
}
