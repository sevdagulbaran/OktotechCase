//
//  Square.swift
//  OktotechCase
//
//  Created by Sevda Gul Baran on 23.10.2022.
//

import Foundation

class SquareViwModel: NSObject, ObservableObject {
    @Published var squares: [SquareModel] = (0...299).map({ _ in SquareModel() })
    
    public func updateViews() {
        squares.enumerated().forEach { index, item in
            switch item.color {
            case .green:
                squares[index].count += 1
            case .red:
                squares[index].count += 3
            case .blue:
                squares[index].count += 2
            default:
                break
            }
        }
    }
}
