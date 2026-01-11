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
            Text(lines.count == maxLines ? "Responso" : "Poni la tua domanda")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Spacer()
            
            if lines.count < maxLines {
                HexagramView(lines: lines)
                    .scaleEffect(0.8)
            } else {
                ResponseView(response: response!)
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button("Reimposta") {
                    lines.removeAll()
                }
                .foregroundStyle(.red)
                
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
                    .disabled(lines.count >= maxLines)
                
                Spacer()
            }
            .padding(20)
        }
    }
}

#Preview {
    QueryView()
}
