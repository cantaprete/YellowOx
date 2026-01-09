//
//  ContentView.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 09/01/26.
//

import SwiftUI
import SwiftData

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
                .font(.title)
            
            Spacer()
            
            if lines.count < maxLines {
                Text(lines.isEmpty ? "…" : lines.map { String($0) }.joined(separator: ", "))
                    .font(.title)
                    .padding()
            } else {
                ResponseView(response: response!)
            }
            
            Spacer()
            
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
                .font(.title)
                .disabled(lines.count >= maxLines)
        }
    }
}

#Preview {
    QueryView()
}
