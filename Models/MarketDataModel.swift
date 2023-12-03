//
//  MarketDataModel.swift
//  Crypto_Tracker
//
//  Created by Varuhn Anandaraj on 2023-11-16.
//

import Foundation
//JSON Data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 10991,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 931,
     "total_market_cap": {
       "btc": 39740022.144463435,
       "eth": 725104415.4388269,
       "ltc": 20218214156.428387,
       "bch": 6248367682.03714,
       "bnb": 5884339988.252759,
       "eos": 2014038437936.1917,
       "xrp": 2325556938510.669,
       "xlm": 12107092927258.873,
       "link": 102403115076.7147,
       "dot": 264414391798.48853,
       "yfi": 101226345.81501728,
       "usd": 1451337380694.618,
       "aed": 5330602552179.472,
       "ars": 513006712997733.56,
       "aud": 2237404927476.919,
       "bdt": 160838193986659.3,
       "bhd": 547113555075.21124,
       "bmd": 1451337380694.618,
       "brl": 7050596995414.455,
       "cad": 1994765990160.2502,
       "chf": 1287191122938.058,
       "clp": 1281530907153350.2,
       "cny": 10511310979680.768,
       "czk": 32625048381848.555,
       "dkk": 9949070135086.58,
       "eur": 1333882097812.3855,
       "gbp": 1166143780038.606,
       "hkd": 11325424170007.604,
       "huf": 502225760948771.8,
       "idr": 22497562434073068,
       "ils": 5434474768515.793,
       "inr": 120802876728375.03,
       "jpy": 218222362892552.5,
       "krw": 1870461682177391.2,
       "kwd": 447561970121.22485,
       "lkr": 476693629109019.94,
       "mmk": 3049611503143426,
       "mxn": 25054495256426.465,
       "myr": 6804595309386.743,
       "ngn": 1149110298198468.8,
       "nok": 15779076428625.686,
       "nzd": 2418984649850.3804,
       "php": 80809745493735.67,
       "pkr": 417152376640309.5,
       "pln": 5833445963131.354,
       "rub": 129583374995985.1,
       "sar": 5443298899790.409,
       "sek": 15328918015930.389,
       "sgd": 1953826665325.613,
       "thb": 51067482745811.14,
       "try": 41597819825652.92,
       "twd": 46323057945645.914,
       "uah": 52593774445531.805,
       "vef": 145322411928.9522,
       "vnd": 35256586956980508,
       "zar": 26624581061609.504,
       "xdr": 1102274775926.377,
       "xag": 60488520058.36679,
       "xau": 730400050.2083737,
       "bits": 39740022144463.44,
       "sats": 3974002214446343.5
     },
     "total_volume": {
       "btc": 2813605.149926513,
       "eth": 51337603.942361444,
       "ltc": 1431455454.8070223,
       "bch": 442386252.95440066,
       "bnb": 416612986.1397947,
       "eos": 142594508390.7484,
       "xrp": 164650109022.46188,
       "xlm": 857185707822.2664,
       "link": 7250170392.48185,
       "dot": 18720616002.036175,
       "yfi": 7166854.785788149,
       "usd": 102755109540.67607,
       "aed": 377408214280.8549,
       "ars": 36321024794355.57,
       "aud": 158408920949.6592,
       "bdt": 11387391010017.12,
       "bhd": 38735799153.76772,
       "bmd": 102755109540.67607,
       "brl": 499184322148.6045,
       "cad": 141230013471.32034,
       "chf": 91133506651.62572,
       "clp": 90732761724417.16,
       "cny": 744203880848.3462,
       "czk": 2309862933897.7217,
       "dkk": 704397065187.8363,
       "eur": 94439241280.65887,
       "gbp": 82563319495.49529,
       "hkd": 801843331994.0929,
       "huf": 35557730247216.125,
       "idr": 1592833977172810,
       "ils": 384762397470.68164,
       "inr": 8552878879969.303,
       "jpy": 15450206892981.291,
       "krw": 132429232238052.98,
       "kwd": 31687517925.044094,
       "lkr": 33750047871706.004,
       "mmk": 215913383221778.03,
       "mxn": 1773865566205.076,
       "myr": 481767331081.4617,
       "ngn": 81357344016861.42,
       "nok": 1117163209906.528,
       "nzd": 171264818214.51202,
       "php": 5721353532690.523,
       "pkr": 29534509843819.473,
       "pln": 413009674328.3033,
       "rub": 9174540716363.38,
       "sar": 385387148536.6884,
       "sek": 1085291863090.515,
       "sgd": 138331497341.39673,
       "thb": 3615592661852.9966,
       "try": 2945137767203.741,
       "twd": 3279686003254.324,
       "uah": 3723654559025.906,
       "vef": 10288869118.307903,
       "vnd": 2496176631970310,
       "zar": 1885028098808.3694,
       "xdr": 78041375389.93869,
       "xag": 4282604849.3122168,
       "xau": 51712536.42744066,
       "bits": 2813605149926.513,
       "sats": 281360514992651.28
     },
     "market_cap_percentage": {
       "btc": 49.17968537149344,
       "eth": 16.592087686735333,
       "usdt": 6.0308098074792245,
       "bnb": 2.61615741483498,
       "xrp": 2.3099156506381933,
       "sol": 1.7901380922503323,
       "usdc": 1.6617901459145683,
       "steth": 1.2298983635068241,
       "ada": 0.9225548627587593,
       "doge": 0.7523355790204234
     },
     "market_cap_change_percentage_24h_usd": 0.08604149276366321,
     "updated_at": 1700151353
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel : Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
