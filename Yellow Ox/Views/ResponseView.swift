//
//  ResponseView.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 09/01/26.
//

import SwiftUI

struct ResponseView: View {
    let response: Response
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            HexagramView(lines: response.rawResponse)
                .frame(width: .infinity, height: 200, alignment: .center)
            
            if response.primaryHexagram.number != response.secondaryHexagram.number {
                Text(response.primaryHexagram.number.description + "." + response.getMovingLines().map { String($0) }.joined(separator: ".") + " → " + response.secondaryHexagram.number.description)
                    .font(Font.title2)
            } else {
                Text(response.primaryHexagram.number.description + "." + response.getMovingLines().map { String($0) }.joined(separator: "."))
            }
            
            HStack {
                Text(response.primaryHexagram.number.description)
                    .padding(20)
                Text(response.primaryHexagram.name)
                Spacer()
                Link(destination: URL(string: "https://www.jamesdekorne.com/GBCh/hex\(response.primaryHexagram.number.description).htm")!) {
                    Text("🔗")
                }
                .padding(20)
            }
                .font(Font.title.bold())
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            if response.primaryHexagram.number != response.secondaryHexagram.number {
                HStack {
                    Text(response.secondaryHexagram.number.description)
                        .padding(20)
                    Text(response.secondaryHexagram.name)
                    Spacer()
                    Link(destination: URL(string: "https://www.jamesdekorne.com/GBCh/hex\(response.secondaryHexagram.number.description).htm")!) {
                        Text("🔗")
                    }
                    .padding(20)
                }
                .font(Font.title.bold())
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            ShareLink(item: /*@START_MENU_TOKEN@*/URL(string: "https://developer.apple.com/xcode/swiftui")!/*@END_MENU_TOKEN@*/)
          
        }
    }
}

#Preview {
    let fakeResponse = Response(rawResponse: [7, 7, 6, 9, 8, 7])
    ResponseView(response: fakeResponse)
}
