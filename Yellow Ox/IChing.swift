//
//  IChing.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 09/01/26.
//

class IChing {
    private let hexagrams: [Hexagram] = [
        Hexagram(number: 1, name: "La forza", pattern: [1, 1, 1, 1, 1, 1]),
        Hexagram(number: 2, name: "Lo spazio", pattern: [0, 0, 0, 0, 0, 0]),
        Hexagram(number: 3, name: "Il germogliare", pattern: [1, 0, 0, 0, 1, 0]),
        Hexagram(number: 4, name: "Il coperto", pattern: [0, 1, 0, 0, 0, 1]),
        Hexagram(number: 5, name: "L'attendere", pattern: [1, 1, 1, 0, 1, 0]),
        Hexagram(number: 6, name: "Il disputare", pattern: [0, 1, 0, 1, 1, 1]),
        Hexagram(number: 7, name: "Il raggruppare", pattern: [0, 1, 0, 0, 0, 0]),
        Hexagram(number: 8, name: "Il raggruppare", pattern: [0, 0, 0, 0, 1, 0]),
        Hexagram(number: 9, name: "L'accumulazione del piccolo", pattern: [1, 1, 1, 0, 1, 1]),
        Hexagram(number: 10, name: "Il camminare", pattern: [1, 1, 0, 1, 1, 1]),
        Hexagram(number: 11, name: "Il pervadere", pattern: [1, 1, 1, 0, 0, 0]),
        Hexagram(number: 12, name: "L'ostruzione", pattern: [0, 0, 0, 1, 1, 1]),
        Hexagram(number: 13, name: "La gente concorde", pattern: [1, 0, 1, 1, 1, 1]),
        Hexagram(number: 14, name: "Il possesso del grande", pattern: [1, 1, 1, 1, 0, 1]),
        Hexagram(number: 15, name: "L'umiliarsi", pattern: [0, 0, 1, 0, 0, 0]),
        Hexagram(number: 16, name: "Il provvedere", pattern: [0, 0, 0, 1, 0, 0]),
        Hexagram(number: 17, name: "Il seguire", pattern: [1, 0, 0, 1, 1, 0]),
        Hexagram(number: 18, name: "La decomposizione", pattern: [0, 1, 1, 0, 0, 1]),
        Hexagram(number: 19, name: "L'avvicinamento", pattern: [1, 1, 0, 0, 0, 0]),
        Hexagram(number: 20, name: "L'osservare", pattern: [0, 0, 0, 0, 1, 1]),
        Hexagram(number: 21, name: "Il rodere e mordere", pattern: [1, 0, 0, 1, 0, 1]),
        Hexagram(number: 22, name: "L'adornare", pattern: [1, 0, 1, 0, 0, 1]),
        Hexagram(number: 23, name: "Lo spogliare", pattern: [0, 0, 0, 0, 0, 1]),
        Hexagram(number: 24, name: "Il ritornare", pattern: [1, 0, 0, 0, 0, 0]),
        Hexagram(number: 25, name: "Senza impigliarsi", pattern: [1, 0, 0, 1, 1, 1]),
        Hexagram(number: 26, name: "L'accumulazione del grande", pattern: [1, 1, 1, 0, 0, 1]),
        Hexagram(number: 27, name: "Le mascelle", pattern: [1, 0, 0, 0, 0, 1]),
        Hexagram(number: 28, name: "L'eccesso del grande", pattern: [0, 1, 1, 1, 1, 0]),
        Hexagram(number: 29, name: "Il precipizio", pattern: [0, 1, 0, 0, 1, 0]),
        Hexagram(number: 30, name: "La radiosità", pattern: [1, 0, 1, 1, 0, 1]),
        Hexagram(number: 31, name: "Il congiungere", pattern: [0, 0, 1, 1, 1, 0]),
        Hexagram(number: 32, name: "Il preservare", pattern: [0, 1, 1, 1, 0, 0]),
        Hexagram(number: 33, name: "Il ritirarsi", pattern: [0, 0, 1, 1, 1, 1]),
        Hexagram(number: 34, name: "Il vigore del grande", pattern: [1, 1, 1, 1, 0, 0]),
        Hexagram(number: 35, name: "Il prosperare", pattern: [0, 0, 0, 1, 0, 1]),
        Hexagram(number: 36, name: "La luce nascosta", pattern: [1, 0, 1, 0, 0, 0]),
        Hexagram(number: 37, name: "La gente di casa", pattern: [1, 0, 1, 0, 1, 1]),
        Hexagram(number: 38, name: "Il polarizzare", pattern: [1, 1, 0, 1, 0, 1]),
        Hexagram(number: 39, name: "Lo zoppicare", pattern: [0, 0, 1, 0, 1, 0]),
        Hexagram(number: 40, name: "Lo scomporre", pattern: [0, 1, 0, 1, 0, 0]),
        Hexagram(number: 41, name: "Il diminuire", pattern: [1, 1, 0, 0, 0, 1]),
        Hexagram(number: 42, name: "L'aumentare", pattern: [1, 0, 0, 0, 1, 1]),
        Hexagram(number: 43, name: "La divisione", pattern: [1, 1, 1, 1, 1, 0]),
        Hexagram(number: 44, name: "L'accoppiamento", pattern: [0, 1, 1, 1, 1, 1]),
        Hexagram(number: 45, name: "Il conglomerare", pattern: [0, 0, 0, 1, 1, 0]),
        Hexagram(number: 46, name: "L'ascendere", pattern: [0, 1, 1, 0, 0, 0]),
        Hexagram(number: 47, name: "La reclusione", pattern: [0, 1, 0, 1, 1, 0]),
        Hexagram(number: 48, name: "Il pozzo", pattern: [0, 1, 1, 0, 1, 0]),
        Hexagram(number: 49, name: "Lo spellarsi", pattern: [1, 0, 1, 1, 1, 0]),
        Hexagram(number: 50, name: "Il tripode", pattern: [0, 1, 1, 1, 0, 1]),
        Hexagram(number: 51, name: "La scossa", pattern: [1, 0, 0, 1, 0, 0]),
        Hexagram(number: 52, name: "L'arresto", pattern: [0, 0, 1, 0, 0, 1]),
        Hexagram(number: 53, name: "L'infiltrare", pattern: [0, 0, 1, 0, 1, 1]),
        Hexagram(number: 54, name: "Covertire in donna la ragazza", pattern: [1, 1, 0, 1, 0, 0]),
        Hexagram(number: 55, name: "L'abbondare", pattern: [1, 0, 1, 1, 0, 0]),
        Hexagram(number: 56, name: "Il soggiornare", pattern: [0, 0, 1, 1, 0, 1]),
        Hexagram(number: 57, name: "La radice", pattern: [0, 1, 1, 0, 1, 1]),
        Hexagram(number: 58, name: "L'apertura", pattern: [1, 1, 0, 1, 1, 0]),
        Hexagram(number: 59, name: "Lo scioglimento", pattern: [0, 1, 0, 0, 1, 1]),
        Hexagram(number: 60, name: "L'articolare", pattern: [1, 1, 0, 0, 1, 0]),
        Hexagram(number: 61, name: "Conformare il centro", pattern: [1, 1, 0, 0, 1, 1]),
        Hexagram(number: 62, name: "L'eccesso del piccolo", pattern: [0, 0, 1, 1, 0, 0]),
        Hexagram(number: 63, name: "Già guadare", pattern: [1, 0, 1, 0, 1, 0]),
        Hexagram(number: 64, name: "Non ancora guadare", pattern: [0, 1, 0, 1, 0, 1])
    ]
    
    func findHexagram(from pattern: [Int]) -> Hexagram? {
        return self.hexagrams.first { $0.pattern == pattern }
    }
}
