//
//  PageView.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/22.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views:[Page]) {
        viewControllers = views.map{ UIHostingController(rootView: $0)}
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numverOfPage: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
                .padding(.bottom, 20)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State var views = [Text("First"), Text("Second"), Text("Third")]
        var body: some View {
            PageView(views)
        }
    }
    
    static var previews: some View {
        PreviewWrapper()
    }
}
