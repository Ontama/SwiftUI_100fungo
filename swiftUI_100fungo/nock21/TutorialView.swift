//
//  TutorialView.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/22.
//

import SwiftUI

struct TutorialView: View {
    let imageName: String
    let text: String
    var body: some View {
        VStack {
            Spacer()
            Text(imageName)
            HStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 150)
                Spacer()
            }
            Spacer()
                .background(.gray)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView(imageName: "sg1", text: "しろくま")
    }
}
