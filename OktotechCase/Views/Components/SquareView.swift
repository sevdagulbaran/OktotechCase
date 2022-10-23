//
//  SquareView.swift
//  OktotechCase
//
//  Created by Sevda Gul Baran on 21.10.2022.
//

import SwiftUI

struct SquareView: View {
    @Binding var model: SquareModel
    var body: some View {
        ZStack {
            Rectangle()
                .fill(model.color)
                .frame(width: UIScreen.screenWidth * 0.17, height: UIScreen.screenHeight * 0.08 )
            VStack {
                Spacer()
                Text("\(model.count)")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
    }
}


