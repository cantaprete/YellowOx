//
//  Response.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 09/01/26.
//

class Response {
    let rawResponse: [Int]
    var primaryHexagram: Hexagram = Hexagram()
    var secondaryHexagram: Hexagram = Hexagram()
    
    init(rawResponse: [Int]) {
        self.rawResponse = rawResponse
        for (index, line) in self.rawResponse.enumerated() {
            switch line {
            case 6:
                self.primaryHexagram.pattern[index] = 0
                self.secondaryHexagram.pattern[index] = 1
                break
            case 7:
                self.primaryHexagram.pattern[index] = 1
                self.secondaryHexagram.pattern[index] = 1
                break
            case 8:
                self.primaryHexagram.pattern[index] = 0
                self.secondaryHexagram.pattern[index] = 0
                break
            case 9:
                self.primaryHexagram.pattern[index] = 1
                self.secondaryHexagram.pattern[index] = 0
                break
            default:
                self.primaryHexagram.pattern[index] = -2
                self.secondaryHexagram.pattern[index] = -2
            }
        }
        
        let IChing = IChing()
        let tempPrimaryHexagram = IChing.findHexagram(from: self.primaryHexagram.pattern) ?? Hexagram()
        let tempSecondaryHexagram = IChing.findHexagram(from: self.secondaryHexagram.pattern) ?? Hexagram()
        
        self.primaryHexagram = tempPrimaryHexagram
        self.secondaryHexagram = tempSecondaryHexagram
    }
}
