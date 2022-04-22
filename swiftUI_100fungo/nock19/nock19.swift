//
//  nock19.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/20.
//

import SwiftUI

struct nock19: View {
    let columns = 3
    let sumikkos = Sumikkos().list
    var body: some View {
        GeometryReader { geometry in
            ScrollView(showsIndicators: false) {
                ForEach(0..<sumikkos.count/columns) { rowIndex in
                    HStack {
                        ForEach(0..<columns) { columnIndex in
                            getSumikkoCell(
                                sumikko: getSumikko(rowIndex: rowIndex, columnIndex: columnIndex),
                                width: cellWidth(width: geometry.size.width),
                                height: cellHeight(width: geometry.size.width))
                        }
                    }
                }
                
                if (sumikkos.count % columns > 0) {
                    HStack {
                        ForEach(0..<sumikkos.count % columns) { lastColumnIndex in
                            getSumikkoCell(
                                sumikko: getSumikko(lastColumnIndex: lastColumnIndex),
                                width: cellWidth(width: geometry.size.width),
                                height: cellHeight(width: geometry.size.width))
                        }
                        Spacer()
                    }
                }
            }
            
            
        }
        
    }
    
    
    private func getSumikko(rowIndex: Int, columnIndex: Int) -> Sumikko {
        return sumikkos[columns * rowIndex + columnIndex]
    }
    
    private func getSumikko(lastColumnIndex: Int) -> Sumikko {
        return sumikkos[columns * (sumikkos.count / columns) + lastColumnIndex]
    }
    
    private func cellWidth(width: CGFloat) -> CGFloat {
        return width / CGFloat(columns)
    }
    
    private func cellHeight(width: CGFloat) -> CGFloat {
        return cellWidth(width: width) * 1.5
    }
    
    private func getSumikkoCell(sumikko: Sumikko, width: CGFloat, height: CGFloat) -> AnyView {
        return AnyView(SumikkoCell(sumikko: sumikko)
            .frame(width: width,
                   height: height)
                .border(Color.black, width: 2)
                .clipped())
    }
}

struct nock19_Previews: PreviewProvider {
    static var previews: some View {
        nock19()
    }
}
