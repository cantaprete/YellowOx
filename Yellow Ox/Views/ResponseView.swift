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
        HexagramView(lines: response.rawResponse)
        
        Spacer()
        
        Text(response.primaryHexagram.number.description)
        Text(response.primaryHexagram.name)
        
        if response.primaryHexagram.number != response.secondaryHexagram.number {
            Text(response.secondaryHexagram.number.description)
            Text(response.secondaryHexagram.name.description)
        }
    }
}

#Preview {
    let fakeResponse = Response(rawResponse: [6, 7, 8, 9, 8, 7])
    ResponseView(response: fakeResponse)
}
