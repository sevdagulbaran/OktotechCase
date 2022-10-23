//
//  ContentView.swift
//  OktotechCase
//
//  Created by Sevda Gul Baran on 21.10.2022.
//

import SwiftUI

final class SquareModel: Identifiable {
    let id = UUID()
    var count: Int
    var color: Color
    
    init(count: Int = 0, color: Color = [.green, .red, .blue].randomElement() ?? .green) {
        self.count = count
        self.color = color
    }
}
struct ContentView: View {
    @ObservedObject var viewModel = SquareViwModel()
    
    var body: some View {
        VStack {
            Button {
                viewModel.updateViews()
            } label: {
                ButtonView()
            }
            ScrollView {
                LazyVGrid(columns: StaticColumns.columns, spacing: 10) {
                    ForEach($viewModel.squares, id: \.id) { item in
                        SquareView(model: item).onTapGesture {
                            viewModel.updateViews()
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
