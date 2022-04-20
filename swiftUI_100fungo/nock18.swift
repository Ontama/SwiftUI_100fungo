//
//  nock18.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

//リストを編集する
struct nock18: View {
    @State private var users = ["Paul", "Taylor", "Adele"]
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id:\.self) { user in
                    Text(user)
                }
                .onDelete(perform: delete)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func delete(at offset: IndexSet) {
        users.remove(atOffsets: offset)
    }
}

struct nock18_Previews: PreviewProvider {
    static var previews: some View {
        nock18()
    }
}
