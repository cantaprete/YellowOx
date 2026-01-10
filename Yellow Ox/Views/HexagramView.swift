//
//  HexagramView.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 10/01/26.
//

import SwiftUI

struct HexagramView: View {
    private var lines: [Int] = []
    private let maxLines = 6
    private let spaceBetweenLines: CGFloat = 14
    
    init(lines: [Int]) {
        self.lines = lines
    }
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<(maxLines - lines.count), id: \.self) { _ in
                Line(number: 0)
                    .padding(spaceBetweenLines)
            }
            ForEach(lines.reversed(), id: \.self) { line in
                Line(number: line)
                    .padding(spaceBetweenLines)
            }
        }
    }
}

#Preview {
    HexagramView(lines: [6, 7, 8, 6, 8, 7])
}
