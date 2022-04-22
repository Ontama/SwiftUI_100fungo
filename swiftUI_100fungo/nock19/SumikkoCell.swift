//
//  SumikkoCell.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

struct SumikkoCell: View {
    let sumikko: Sumikko
    var body: some View {
        ZStack{
            Image(sumikko.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                Spacer()
                Text(sumikko.name)
                    .font(Font.system(size: 20.0).bold())
                    .frame(maxWidth: .infinity, maxHeight: 32)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .opacity(0.8)
            }
        }
    }
}

struct SumikkoCell_Previews: PreviewProvider {
    static var previews: some View {
        SumikkoCell(sumikko: Sumikko(name: "しろくま", imageName: "sg1"))
    }
}
