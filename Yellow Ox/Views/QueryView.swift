//
//  ContentView.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 09/01/26.
//

import SwiftUI

struct QueryView: View {
    @State private var lines: [Int] = []
    private let maxLines = 6
    @State private var response: Response?

    var body: some View {
        VStack {
            Button("Reimposta") {
                lines.removeAll()
            }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            
            if lines.count < maxLines {
                HexagramView(lines: lines)
            } else {
                ResponseView(response: response!)
            }
            
            Button("Lancia") {
                if lines.count < maxLines {
                    Task {
                        let line = await CoinLauncher.launchCoins()
                        await MainActor.run {
                            lines.append(line)
                            if lines.count == maxLines {
                                response = Response(rawResponse: lines)
                            }
                        }
                    }
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
    QueryView()
}
