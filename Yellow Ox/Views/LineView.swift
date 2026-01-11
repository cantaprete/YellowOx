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
    private let radius: CGFloat = 20
    
    init(number: Int) {
        switch number {
        case 6:
            lineType = .yin
            isChanging = true
        case 7, 1:
            lineType = .yang
            isChanging = false
        case 8, 0:
            lineType = .yin
            isChanging = false
        case 9:
            lineType = .yang
            isChanging = true
        default:
            lineType = .unset
            isChanging = false
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let cornerRadius = CGSize(width: min(width, height) / radius, height: min(width, height) / radius)
            switch lineType {
            case .unset:
                Rectangle()
                    .aspectRatio(CGSize(width: 10, height: 1), contentMode: .fit)
                    .foregroundStyle(Color(.label).opacity(0))
            case .yin:
                HStack(spacing: 0) {
                    RoundedRectangle(cornerSize: cornerRadius, style: .continuous)
                        .aspectRatio(CGSize(width: 3.5, height: 1), contentMode: .fit)
                        .foregroundStyle(isChanging ? .red : Color(.label))
                    Rectangle()
                        .aspectRatio(CGSize(width: 3, height: 1), contentMode: .fit)
                        .foregroundStyle(.background.opacity(0))
                    RoundedRectangle(cornerSize: cornerRadius, style: .continuous)
                        .aspectRatio(CGSize(width: 3.5, height: 1), contentMode: .fit)                    .foregroundStyle(isChanging ? .red : Color(.label))
                }
                .aspectRatio(CGSize(width: 10, height: 1), contentMode: .fit)
            case .yang:
                RoundedRectangle(cornerSize: cornerRadius, style: .continuous)
                    .aspectRatio(CGSize(width: 10, height: 1), contentMode: .fit)
                    .foregroundStyle(isChanging ? .red : Color(.label))
            }
        }
    }
}

enum LineType {
    case unset, yin, yang
}

#Preview {
    VStack(spacing: 0) {
        Line(number: 9)
        Line(number: -1)
        Line(number: 8)
        Line(number: -1)
        Line(number: 9)
        Line(number: -1)
        Line(number: 6)
    }
    .scaledToFill()
}
