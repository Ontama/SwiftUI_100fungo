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
        }
    }
    private let emailkey = "email"
    
    @Published var isActive = false
    private var isFirstApper = true
    
    func onApper() {
        guard isFirstApper else { return }
        isFirstApper = false
        
        if email.count > 8 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { [weak self] in
                self?.isActive = true
            })
        }
    }
}
