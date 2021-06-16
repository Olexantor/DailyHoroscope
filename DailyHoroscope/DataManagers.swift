//
//  DataManagers.swift
//  DailyHoroscope
//
//  Created by Александр on 02.03.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let zodiacNames = [
        "Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo",
        "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"
    ]
    
    let zodiacPeriods = [
        "21 March – 20 April", "21 April – 21 May", "May 22 May – 21 June",
        "22 June – 22 July", "23 July – 21 August", "22 August – 23 September",
        "24 September – 23 October", "24 October – 22 November",
        "23 November – 22 December", "23 December – 20 January",
        "21 January – 19 February", "20 February – 20 March"]
    
    let predictionURL = [
        "http://ohmanda.com/api/horoscope/aries",
        "http://ohmanda.com/api/horoscope/taurus",
        "http://ohmanda.com/api/horoscope/gemini",
        "http://ohmanda.com/api/horoscope/cancer",
        "http://ohmanda.com/api/horoscope/leo",
        "http://ohmanda.com/api/horoscope/virgo",
        "http://ohmanda.com/api/horoscope/libra",
        "http://ohmanda.com/api/horoscope/scorpio",
        "http://ohmanda.com/api/horoscope/sagittarius",
        "http://ohmanda.com/api/horoscope/capricorn",
        "http://ohmanda.com/api/horoscope/aquarius",
        "http://ohmanda.com/api/horoscope/pisces"
    ]

    let predictionImageNames = [
    "Space1", "Space2", "Space3", "Space4", "Space5", "Space6", "Space7",
        "Space8", "Space9", "Space10", "Space11", "Space12"
    ]
}

