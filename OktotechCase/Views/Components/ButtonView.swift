//
//  ButtonView.swift
//  OktotechCase
//
//  Created by Sevda Gul Baran on 21.10.2022.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        HStack {
            Text("ADD")
                .foregroundColor(.white)
        }.frame(width: UIScreen.screenWidth * 0.9, height: UIScreen.screenHeight * 0.065 )
            .background(.cyan)
            .cornerRadius(16)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
