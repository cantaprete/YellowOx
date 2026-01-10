//
//  CGLine.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 10/01/26.
//

import SwiftUI

struct Line: View {
    @State private var lineType: LineType
    @State private var isChanging: Bool
    private let segmentHeight: CGFloat = 28
    private var segmentWidth: CGFloat
    
    init(number: Int) {
        switch number {
        case 6:
            lineType = .yin
            isChanging = true
            segmentWidth = 104
        case 7:
            lineType = .yang
            isChanging = false
            segmentWidth = 270
        case 8:
            lineType = .yin
            isChanging = false
            segmentWidth = 104
        case 9:
            lineType = .yang
            isChanging = true
            segmentWidth = 270
        default:
            lineType = .unset
            isChanging = false
            segmentWidth = 0
        }
    }
    
    var body: some View {
        HStack(spacing: 0) {
            if lineType == .yin {
                Rectangle()
                    .frame(width: segmentWidth, height: segmentHeight)
                    .foregroundStyle(.foreground)
                Rectangle()
                    .frame(width: 62, height: segmentHeight)
                    .foregroundStyle(.background.opacity(0))
                    .overlay(
                        isChanging ?
                            Rectangle()
                                .rotation(Angle(degrees: 45))
                                .frame(width: 70, height: 20)
                                .foregroundStyle(.red)
                                .overlay(
                                        Rectangle()
                                            .rotation(Angle(degrees: -45))
                                            .frame(width: 70, height: 20)
                                            .foregroundStyle(.red)
                                )
                        : nil
                    )
                Rectangle()
                    .frame(width: segmentWidth, height: segmentHeight)
                    .foregroundStyle(.foreground)
            } else {
                Rectangle()
                    .frame(width: segmentWidth, height: segmentHeight)
                    .foregroundStyle(.foreground)
                    .overlay(
                        isChanging ?
                            Circle()
                                .stroke(.red, lineWidth: 15)
                                .frame(width: 50, height: 50)
                        : nil
                    )
            }
        }
    }
}

enum LineType {
    case unset, yin, yang
}

#Preview {
    Line(number: 7)
    Line(number: 9)
    Line(number: 8)
    Line(number: 9)
    Line(number: 6)
}
