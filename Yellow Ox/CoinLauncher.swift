//
//  CoinLauncher.swift
//  Yellow Ox
//
//  Created by Jacopo Donati on 09/01/26.
//


import Foundation

class CoinLauncher {
    static func launchCoins() async -> Int {
        async let coin1 = launchCoin()
        async let coin2 = launchCoin()
        async let coin3 = launchCoin()
        
        let result = await (coin1 + coin2 + coin3)
        
        return result
    }
    
    private static func launchCoin() -> Int {
        return Int.random(in: 2...3)
    }
}
