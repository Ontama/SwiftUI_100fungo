//
//  ShowMoreView.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

struct ShowMoreView: View {
    @State var text: String
    @State private var isFirst = true
    @State private var isFold = false
    @State private var needFoldButton = true
    @State private var textHeight: CGFloat? = nil
    
    var body: some View {
        VStack(alignment: .trailing) {
            HStack{
                Text(text)
                    .frame(height: textHeight)
                    .background(GeometryReader { geometry in
                        Color.clear.preference(key: SizePreference.self, value: geometry.size)
                    })
                    .padding()
                    .onPreferenceChange(SizePreference.self) { textSize in
                        guard isFirst == true else { return }
                       
                        if textSize.height > 80 {
                            textHeight = 80
                            isFirst = false
                            isFold = true
                        } else {
                            needFoldButton = false
                        }
                    }
                Spacer()
            }
            
            if needFoldButton {
                Button(action: {
                    isFold.toggle()
                    textHeight = self.isFold ? 80 : nil
                }) {
                    Text(isFold ? "More" : "Fold")
                }.padding(.trailing, 8)
            }
        }
    }
}

struct ShowMoreView_Previews: PreviewProvider {
    static var previews: some View {
        ShowMoreView(text: Book.aliceInWonderland)
    }
}

fileprivate struct SizePreference: PreferenceKey {
    static let defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}
