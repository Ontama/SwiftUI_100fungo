//
//  nock21.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/22.
//

import SwiftUI

struct nock21: View {
    @State var views = [
        TutorialView(imageName: "sg1", text: "First"),
        TutorialView(imageName: "sg2", text: "Second"),
        TutorialView(imageName: "sg3", text: "Third"),
        TutorialView(imageName: "sg4", text: "Fourth"),
    ]
    
    var body: some View {
        PageView(views)
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all)
    }
}

struct nock21_Previews: PreviewProvider {
    static var previews: some View {
        nock21()
    }
}
