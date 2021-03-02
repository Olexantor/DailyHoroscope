//
//  ZodiacSign.swift
//  DailyHoroscope
//
//  Created by Александр on 02.03.2021.
//

struct ZodiacSign {
    let name: String
    let period: String
    let URL: String
}

extension ZodiacSign {
    static func getZodiacInfo() -> [ZodiacSign] {
        
        var zodiacs: [ZodiacSign] = []
        
        let names = DataManager.shared.zodiacNames
        let periods = DataManager.shared.zodiacPeriods
        let URLS = DataManager.shared.zoiacURLS
        
        for index in 0..<names.count {
            let zodiac = ZodiacSign(name: names[index],
                                    period: periods[index], URL: URLS[index])
            zodiacs.append(zodiac)
        }
        return zodiacs
    }
}
