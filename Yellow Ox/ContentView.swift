//
//  ContentView.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 09/01/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var lines: [Int] = []
    private let maxLines = 6

    var body: some View {
        VStack {
            Button("Reimposta") {
                lines.removeAll()
            }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            
            Spacer()
            
            Text(lines.isEmpty ? "…" : lines.map { String($0) }.joined(separator: ", "))
                            .font(.largeTitle)
                            .padding()
            
            Spacer()
            
            Button("Lancia") {
                if lines.count < maxLines {
                    let line = Int.random(in: 6...9)
                    lines.append(line)
                }
            }
                .padding()
                .background(lines.count < maxLines ? Color.blue : Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
                .disabled(lines.count >= maxLines)
        }
    }
}

#Preview {
    ContentView()
}
