//
//  IChing.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 09/01/26.
//

class IChing {
    private let hexagrams: [Hexagram] = [
        Hexagram(number: 1, symbol: "䷀", name: "La forza", pattern: [1, 1, 1, 1, 1, 1]),
        Hexagram(number: 2, symbol: "䷁", name: "Lo spazio", pattern: [0, 0, 0, 0, 0, 0]),
        Hexagram(number: 3, symbol: "䷂", name: "Il germogliare", pattern: [1, 0, 0, 0, 1, 0]),
        Hexagram(number: 4, symbol: "䷃", name: "Il coperto", pattern: [0, 1, 0, 0, 0, 1]),
        Hexagram(number: 5, symbol: "䷄", name: "L’attendere", pattern: [1, 1, 1, 0, 1, 0]),
        Hexagram(number: 6, symbol: "䷅", name: "Il disputare", pattern: [0, 1, 0, 1, 1, 1]),
        Hexagram(number: 7, symbol: "䷆", name: "Il raggruppare", pattern: [0, 1, 0, 0, 0, 0]),
        Hexagram(number: 8, symbol: "䷇", name: "Il raggruppare", pattern: [0, 0, 0, 0, 1, 0]),
        Hexagram(number: 9, symbol: "䷈", name: "L’accumulazione del piccolo", pattern: [1, 1, 1, 0, 1, 1]),
        Hexagram(number: 10, symbol: "䷉", name: "Il camminare", pattern: [1, 1, 0, 1, 1, 1]),
        Hexagram(number: 11, symbol: "䷊", name: "Il pervadere", pattern: [1, 1, 1, 0, 0, 0]),
        Hexagram(number: 12, symbol: "䷋", name: "L’ostruzione", pattern: [0, 0, 0, 1, 1, 1]),
        Hexagram(number: 13, symbol: "䷌", name: "La gente concorde", pattern: [1, 0, 1, 1, 1, 1]),
        Hexagram(number: 14, symbol: "䷍", name: "Il possesso del grande", pattern: [1, 1, 1, 1, 0, 1]),
        Hexagram(number: 15, symbol: "䷎", name: "L’umiliarsi", pattern: [0, 0, 1, 0, 0, 0]),
        Hexagram(number: 16, symbol: "䷏", name: "Il provvedere", pattern: [0, 0, 0, 1, 0, 0]),
        Hexagram(number: 17, symbol: "䷐", name: "Il seguire", pattern: [1, 0, 0, 1, 1, 0]),
        Hexagram(number: 18, symbol: "䷑", name: "La decomposizione", pattern: [0, 1, 1, 0, 0, 1]),
        Hexagram(number: 19, symbol: "䷒", name: "L’avvicinamento", pattern: [1, 1, 0, 0, 0, 0]),
        Hexagram(number: 20, symbol: "䷓", name: "L’osservare", pattern: [0, 0, 0, 0, 1, 1]),
        Hexagram(number: 21, symbol: "䷔", name: "Il rodere e mordere", pattern: [1, 0, 0, 1, 0, 1]),
        Hexagram(number: 22, symbol: "䷕", name: "L’adornare", pattern: [1, 0, 1, 0, 0, 1]),
        Hexagram(number: 23, symbol: "䷖", name: "Lo spogliare", pattern: [0, 0, 0, 0, 0, 1]),
        Hexagram(number: 24, symbol: "䷗", name: "Il ritornare", pattern: [1, 0, 0, 0, 0, 0]),
        Hexagram(number: 25, symbol: "䷘", name: "Senza impigliarsi", pattern: [1, 0, 0, 1, 1, 1]),
        Hexagram(number: 26, symbol: "䷙", name: "L’accumulazione del grande", pattern: [1, 1, 1, 0, 0, 1]),
        Hexagram(number: 27, symbol: "䷚", name: "Le mascelle", pattern: [1, 0, 0, 0, 0, 1]),
        Hexagram(number: 28, symbol: "䷛", name: "L’eccesso del grande", pattern: [0, 1, 1, 1, 1, 0]),
        Hexagram(number: 29, symbol: "䷜", name: "Il precipizio", pattern: [0, 1, 0, 0, 1, 0]),
        Hexagram(number: 30, symbol: "䷝", name: "La radiosità", pattern: [1, 0, 1, 1, 0, 1]),
        Hexagram(number: 31, symbol: "䷞", name: "Il congiungere", pattern: [0, 0, 1, 1, 1, 0]),
        Hexagram(number: 32, symbol: "䷟", name: "Il preservare", pattern: [0, 1, 1, 1, 0, 0]),
        Hexagram(number: 33, symbol: "䷠", name: "Il ritirarsi", pattern: [0, 0, 1, 1, 1, 1]),
        Hexagram(number: 34, symbol: "䷡", name: "Il vigore del grande", pattern: [1, 1, 1, 1, 0, 0]),
        Hexagram(number: 35, symbol: "䷢", name: "Il prosperare", pattern: [0, 0, 0, 1, 0, 1]),
        Hexagram(number: 36, symbol: "䷣", name: "La luce nascosta", pattern: [1, 0, 1, 0, 0, 0]),
        Hexagram(number: 37, symbol: "䷤", name: "La gente di casa", pattern: [1, 0, 1, 0, 1, 1]),
        Hexagram(number: 38, symbol: "䷥", name: "Il polarizzare", pattern: [1, 1, 0, 1, 0, 1]),
        Hexagram(number: 39, symbol: "䷦", name: "Lo zoppicare", pattern: [0, 0, 1, 0, 1, 0]),
        Hexagram(number: 40, symbol: "䷧", name: "Lo scomporre", pattern: [0, 1, 0, 1, 0, 0]),
        Hexagram(number: 41, symbol: "䷨", name: "Il diminuire", pattern: [1, 1, 0, 0, 0, 1]),
        Hexagram(number: 42, symbol: "䷩", name: "L’aumentare", pattern: [1, 0, 0, 0, 1, 1]),
        Hexagram(number: 43, symbol: "䷪", name: "La divisione", pattern: [1, 1, 1, 1, 1, 0]),
        Hexagram(number: 44, symbol: "䷫", name: "L’accoppiamento", pattern: [0, 1, 1, 1, 1, 1]),
        Hexagram(number: 45, symbol: "䷬", name: "Il conglomerare", pattern: [0, 0, 0, 1, 1, 0]),
        Hexagram(number: 46, symbol: "䷭", name: "L’ascendere", pattern: [0, 1, 1, 0, 0, 0]),
        Hexagram(number: 47, symbol: "䷮", name: "La reclusione", pattern: [0, 1, 0, 1, 1, 0]),
        Hexagram(number: 48, symbol: "䷯", name: "Il pozzo", pattern: [0, 1, 1, 0, 1, 0]),
        Hexagram(number: 49, symbol: "䷰", name: "Lo spellarsi", pattern: [1, 0, 1, 1, 1, 0]),
        Hexagram(number: 50, symbol: "䷱", name: "Il tripode", pattern: [0, 1, 1, 1, 0, 1]),
        Hexagram(number: 51, symbol: "䷲", name: "La scossa", pattern: [1, 0, 0, 1, 0, 0]),
        Hexagram(number: 52, symbol: "䷳", name: "L’arresto", pattern: [0, 0, 1, 0, 0, 1]),
        Hexagram(number: 53, symbol: "䷴", name: "L’infiltrare", pattern: [0, 0, 1, 0, 1, 1]),
        Hexagram(number: 54, symbol: "䷵", name: "Covertire in donna la ragazza", pattern: [1, 1, 0, 1, 0, 0]),
        Hexagram(number: 55, symbol: "䷶", name: "L’abbondare", pattern: [1, 0, 1, 1, 0, 0]),
        Hexagram(number: 56, symbol: "䷷", name: "Il soggiornare", pattern: [0, 0, 1, 1, 0, 1]),
        Hexagram(number: 57, symbol: "䷸", name: "La radice", pattern: [0, 1, 1, 0, 1, 1]),
        Hexagram(number: 58, symbol: "䷹", name: "L’apertura", pattern: [1, 1, 0, 1, 1, 0]),
        Hexagram(number: 59, symbol: "䷺", name: "Lo scioglimento", pattern: [0, 1, 0, 0, 1, 1]),
        Hexagram(number: 60, symbol: "䷻", name: "L’articolare", pattern: [1, 1, 0, 0, 1, 0]),
        Hexagram(number: 61, symbol: "䷼", name: "Conformare il centro", pattern: [1, 1, 0, 0, 1, 1]),
        Hexagram(number: 62, symbol: "䷽", name: "L’eccesso del piccolo", pattern: [0, 0, 1, 1, 0, 0]),
        Hexagram(number: 63, symbol: "䷾", name: "Già guadare", pattern: [1, 0, 1, 0, 1, 0]),
        Hexagram(number: 64, symbol: "䷿", name: "Non ancora guadare", pattern: [0, 1, 0, 1, 0, 1])
    ]
    
    func findHexagram(from pattern: [Int]) -> Hexagram? {
        return self.hexagrams.first { $0.pattern == pattern }
    }
}
