//
//  PreviewProvider.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/3/24.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}


class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init() {}
    
    let currentForecast = Current(
        id: "https://api.weather.gov/gridpoints/LSX/38,92",
        type: "wx:Gridpoint",
        updateTime: "2024-11-03T17:23:25+00:00",
        validTimes: "2024-11-03T11:00:00+00:00/P7DT14H",
        elevation: Elevation(
            unitCode: UnitCode(rawValue: "wmoUnit:m"),
            value: 253.89840000000001
        ),
        forecastOffice: "https://api.weather.gov/offices/LSX",
        gridID: "LSX",
        gridX: "38",
        gridY: "92",
        temperature: ApparentTemperature(
            uom: "wmoUnit:degC",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT3H", value: ValueUnion.double(13.333333333333334)), ApparentTemperatureValue(validTime: "2024-11-03T14:00:00+00:00/PT1H", value: ValueUnion.double(13.888888888888889)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT1H", value: ValueUnion.double(14.444444444444445)), ApparentTemperatureValue(validTime: "2024-11-03T16:00:00+00:00/PT1H", value: ValueUnion.double(15.555555555555555)), ApparentTemperatureValue(validTime: "2024-11-03T17:00:00+00:00/PT1H", value: ValueUnion.double(17.222222222222221)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT1H", value: ValueUnion.double(18.333333333333332)), ApparentTemperatureValue(validTime: "2024-11-03T19:00:00+00:00/PT1H", value: ValueUnion.double(18.888888888888889)), ApparentTemperatureValue(validTime: "2024-11-03T20:00:00+00:00/PT3H", value: ValueUnion.double(19.444444444444443)), ApparentTemperatureValue(validTime: "2024-11-03T23:00:00+00:00/PT1H", value: ValueUnion.double(18.888888888888889)), ApparentTemperatureValue(validTime: "2024-11-04T00:00:00+00:00/PT1H", value: ValueUnion.double(18.333333333333332))]),
        dewpoint: ApparentTemperature(uom: "wmoUnit:degC", values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT1H", value: ValueUnion.double(8.8888888888888893)), ApparentTemperatureValue(validTime: "2024-11-03T12:00:00+00:00/PT1H", value: ValueUnion.double(10)), ApparentTemperatureValue(validTime: "2024-11-03T13:00:00+00:00/PT1H", value: ValueUnion.double(10.555555555555555)), ApparentTemperatureValue(validTime: "2024-11-03T13:00:00+00:00/PT1H", value: ValueUnion.double(12.222222222222221)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT1H", value: ValueUnion.double(13.333333333333334)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT1H", value: ValueUnion.double(13.333333333333334))]),
        maxTemperature: ApparentTemperature(
            uom: "wmoUnit:degC",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T13:00:00+00:00/PT13H", value: ValueUnion.double(19.444444444444443)), ApparentTemperatureValue(validTime: "2024-11-04T13:00:00+00:00/PT13H", value: ValueUnion.double(20)), ApparentTemperatureValue(validTime: "2024-11-05T13:00:00+00:00/PT13H", value: ValueUnion.double(17.777777777777779)), ApparentTemperatureValue(validTime: "2024-11-06T13:00:00+00:00/PT13H", value: ValueUnion.double(16.111111111111111)), ApparentTemperatureValue(validTime: "2024-11-07T13:00:00+00:00/PT13H", value: ValueUnion.double(15)), ApparentTemperatureValue(validTime: "2024-11-08T13:00:00+00:00/PT13H", value: ValueUnion.double(14.444444444444445)),]
        ),
        minTemperature: ApparentTemperature(
            uom: "wmoUnit:degC",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT4H", value: ValueUnion.double(11.666666666666666)), ApparentTemperatureValue(validTime: "2024-11-04T01:00:00+00:00/PT14H", value: ValueUnion.double(16.111111111111111)), ApparentTemperatureValue(validTime: "2024-11-05T01:00:00+00:00/PT14H", value: ValueUnion.double(15.555555555555555)), ApparentTemperatureValue(validTime: "2024-11-06T01:00:00+00:00/PT14H", value: ValueUnion.double(4.4444444444444446)), ApparentTemperatureValue(validTime: "2024-11-07T01:00:00+00:00/PT14H", value: ValueUnion.double(5)), ApparentTemperatureValue(validTime: "2024-11-08T01:00:00+00:00/PT14H", value: ValueUnion.double(5)), ApparentTemperatureValue(validTime: "2024-11-09T01:00:00+00:00/PT14H", value: ValueUnion.double(6.1111111111111107)), ApparentTemperatureValue(validTime: "2024-11-10T01:00:00+00:00/PT14H", value: ValueUnion.double(5.5555555555555554)),]
        ),
        relativeHumidity: ApparentTemperature(
            uom: "wmoUnit:percent",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT1H", value: ValueUnion.double(74)), ApparentTemperatureValue(validTime: "2024-11-03T12:00:00+00:00/PT1H", value: ValueUnion.double(80)), ApparentTemperatureValue(validTime: "2024-11-03T13:00:00+00:00/PT1H", value: ValueUnion.double(83)), ApparentTemperatureValue(validTime: "2024-11-03T14:00:00+00:00/PT1H", value: ValueUnion.double(90)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT2H", value: ValueUnion.double(93)), ApparentTemperatureValue(validTime: "2024-11-03T17:00:00+00:00/PT1H", value: ValueUnion.double(90)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT1H", value: ValueUnion.double(87)), ApparentTemperatureValue(validTime: "2024-11-03T19:00:00+00:00/PT4H", value: ValueUnion.double(90)), ApparentTemperatureValue(validTime: "2024-11-03T23:00:00+00:00/PT2H", value: ValueUnion.double(93))]
        ),
        apparentTemperature: nil,
        wetBulbGlobeTemperature: nil,
        heatIndex: ApparentTemperature(
            uom: "wmoUnit:degC",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/P7DT14H", value: ValueUnion.null)]
        ),
        windChill: ApparentTemperature(
            uom: "wmoUnit:degC",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/P2DT16H", value: ValueUnion.null), ApparentTemperatureValue(validTime: "2024-11-06T03:00:00+00:00/PT1H", value: ValueUnion.double(8.8888888888888893)), ApparentTemperatureValue(validTime: "2024-11-06T04:00:00+00:00/PT2H", value: ValueUnion.double(8.3333333333333339)), ApparentTemperatureValue(validTime: "2024-11-06T06:00:00+00:00/PT1H", value: ValueUnion.double(7.7777777777777777)), ApparentTemperatureValue(validTime: "2024-11-06T07:00:00+00:00/PT2H", value: ValueUnion.double(7.2222222222222223)), ApparentTemperatureValue(validTime: "2024-11-06T09:00:00+00:00/PT1H", value: ValueUnion.double(6.666666666666667)), ApparentTemperatureValue(validTime: "2024-11-06T10:00:00+00:00/PT3H", value: ValueUnion.double(6.1111111111111107)), ApparentTemperatureValue(validTime: "2024-11-06T13:00:00+00:00/PT1H", value: ValueUnion.double(7.2222222222222223)), ApparentTemperatureValue(validTime: "2024-11-06T14:00:00+00:00/PT1H", value: ValueUnion.double(8.3333333333333339))]
        ),
        skyCover: ApparentTemperature(
            uom: "wmoUnit:percent",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT1H", value: ValueUnion.double(94)), ApparentTemperatureValue(validTime: "2024-11-03T12:00:00+00:00/PT1H", value: ValueUnion.double(95)), ApparentTemperatureValue(validTime: "2024-11-03T13:00:00+00:00/PT2H", value: ValueUnion.double(93)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT1H", value: ValueUnion.double(96)), ApparentTemperatureValue(validTime: "2024-11-03T16:00:00+00:00/PT1H", value: ValueUnion.double(97)), ApparentTemperatureValue(validTime: "2024-11-03T17:00:00+00:00/PT1H", value: ValueUnion.double(98)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT3H", value: ValueUnion.double(97)),]
        ),
        windDirection:  ApparentTemperature(
            uom: "wmoUnit:degree_(angle)",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT3H", value: ValueUnion.double(140)), ApparentTemperatureValue(validTime: "2024-11-03T14:00:00+00:00/PT1H", value: ValueUnion.double(110)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT1H", value: ValueUnion.double(120)), ApparentTemperatureValue(validTime: "2024-11-03T16:00:00+00:00/PT1H", value: ValueUnion.double(140)), ApparentTemperatureValue(validTime: "2024-11-03T17:00:00+00:00/PT1H", value: ValueUnion.double(150)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT1H", value: ValueUnion.double(160)), ApparentTemperatureValue(validTime: "2024-11-03T19:00:00+00:00/PT1H", value: ValueUnion.double(170))]
        ),
        windSpeed: ApparentTemperature(
            uom: "wmoUnit:km_h-1",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT2H", value: ValueUnion.double(20.372)), ApparentTemperatureValue(validTime: "2024-11-03T13:00:00+00:00/PT1H", value: ValueUnion.double(24.076000000000001)), ApparentTemperatureValue(validTime: "2024-11-03T14:00:00+00:00/PT1H", value: ValueUnion.double(11.112)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT1H", value: ValueUnion.double(16.667999999999999)), ApparentTemperatureValue(validTime: "2024-11-03T16:00:00+00:00/PT1H", value: ValueUnion.double(24.076000000000001)), ApparentTemperatureValue(validTime: "2024-11-03T17:00:00+00:00/PT1H", value: ValueUnion.double(29.632000000000001)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT2H", value: ValueUnion.double(27.780000000000001))]
        ),
        windGust: ApparentTemperature(
            uom: "wmoUnit:km_h-1",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT1H", value: ValueUnion.double(37.039999999999999)), ApparentTemperatureValue(validTime: "2024-11-03T12:00:00+00:00/PT1H", value: ValueUnion.double(38.892000000000003)), ApparentTemperatureValue(validTime: "2024-11-03T13:00:00+00:00/PT1H", value: ValueUnion.double(42.595999999999997)), ApparentTemperatureValue(validTime: "2024-11-03T14:00:00+00:00/PT1H", value: ValueUnion.double(22.224)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT1H", value: ValueUnion.double(35.188000000000002)), ApparentTemperatureValue(validTime: "2024-11-03T16:00:00+00:00/PT1H", value: ValueUnion.double(46.299999999999997)), ApparentTemperatureValue(validTime: "2024-11-03T17:00:00+00:00/PT3H", value: ValueUnion.double(48.152000000000001))]
        ),
        weather: AtmosphericDispersionIndex(values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT3H", value: ValueUnion.valueValueClassArray([ValueValueClass.init(coverage: .slightChance, weather: .thunderstorms, intensity: nil, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)), ValueValueClass.init(coverage: .likely, weather: .rain, intensity: nil, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)),])), ApparentTemperatureValue(validTime: "2024-11-03T14:00:00+00:00/PT3H", value: ValueUnion.valueValueClassArray([ValueValueClass.init(coverage: .slightChance, weather: .thunderstorms, intensity: nil, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)), ValueValueClass.init(coverage: .definite, weather: .rain, intensity: .light, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)),])), ApparentTemperatureValue(validTime: "2024-11-03T17:00:00+00:00/PT1H", value: ValueUnion.valueValueClassArray([ValueValueClass.init(coverage: .slightChance, weather: .thunderstorms, intensity: nil, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)), ValueValueClass.init(coverage: .likely, weather: .rain, intensity: .light, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)),])), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT2H", value: ValueUnion.valueValueClassArray([ValueValueClass.init(coverage: .chance, weather: .thunderstorms, intensity: nil, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)), ValueValueClass.init(coverage: .likely, weather: .rain, intensity: .light, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)),])), ApparentTemperatureValue(validTime: "2024-11-03T20:00:00+00:00/PT3H", value: ValueUnion.valueValueClassArray([ValueValueClass.init(coverage: .chance, weather: .thunderstorms, intensity: nil, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)), ValueValueClass.init(coverage: .chance, weather: .rain, intensity: .light, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)),])), ApparentTemperatureValue(validTime: "2024-11-03T23:00:00+00:00/PT2H", value: ValueUnion.valueValueClassArray([ValueValueClass.init(coverage: .slightChance, weather: .thunderstorms, intensity: nil, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)), ValueValueClass.init(coverage: .slightChance, weather: .rain, intensity: .light, visibility: Elevation(unitCode: UnitCode(rawValue: "wmoUnit:km"), value: nil)),])),]),
        hazards: nil,
        probabilityOfPrecipitation: ApparentTemperature(
            uom: "wmoUnit:percent",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT2H", value: ValueUnion.double(60)), ApparentTemperatureValue(validTime: "2024-11-03T13:00:00+00:00/PT1H", value: ValueUnion.double(68)), ApparentTemperatureValue(validTime: "2024-11-03T14:00:00+00:00/PT1H", value: ValueUnion.double(88)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT2H", value: ValueUnion.double(77)), ApparentTemperatureValue(validTime: "2024-11-03T17:00:00+00:00/PT1H", value: ValueUnion.double(74)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT1H", value: ValueUnion.double(70)), ApparentTemperatureValue(validTime: "2024-11-03T19:00:00+00:00/PT1H", value: ValueUnion.double(59))]
        ),
        quantitativePrecipitation: ApparentTemperature(
            uom: "wmoUnit:mm",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT1H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-03T12:00:00+00:00/PT6H", value: ValueUnion.double(3.556)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT6H", value: ValueUnion.double(1.778)), ApparentTemperatureValue(validTime: "2024-11-04T00:00:00+00:00/PT6H", value: ValueUnion.double(6.3499999999999996)), ApparentTemperatureValue(validTime: "2024-11-04T06:00:00+00:00/PT6H", value: ValueUnion.double(7.1120000000000001)), ApparentTemperatureValue(validTime: "2024-11-04T12:00:00+00:00/PT6H", value: ValueUnion.double(4.3179999999999996)), ApparentTemperatureValue(validTime: "2024-11-04T18:00:00+00:00/PT6H", value: ValueUnion.double(7.1120000000000001))]
        ),
        iceAccumulation: ApparentTemperature(
            uom: "wmoUnit:mm",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT1H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-03T12:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-04T00:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-04T06:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-04T12:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-04T18:00:00+00:00/PT6H", value: ValueUnion.double(0))]
        ),
        snowfallAmount: ApparentTemperature(
            uom: "wmoUnit:mm",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT1H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-03T12:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-04T00:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-04T06:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-04T12:00:00+00:00/PT6H", value: ValueUnion.double(0)), ApparentTemperatureValue(validTime: "2024-11-04T18:00:00+00:00/PT6H", value: ValueUnion.double(0))]
        ),
        snowLevel: nil,
        ceilingHeight: nil,
        visibility: ApparentTemperature(
            uom: "wmoUnit:m",
            values: [ApparentTemperatureValue(validTime: "2024-11-03T11:00:00+00:00/PT3H", value: ValueUnion.double(9656.0640000000003)), ApparentTemperatureValue(validTime: "2024-11-03T14:00:00+00:00/PT1H", value: ValueUnion.double(6437.3760000000002)), ApparentTemperatureValue(validTime: "2024-11-03T15:00:00+00:00/PT1H", value: ValueUnion.double(4828.0320000000002)), ApparentTemperatureValue(validTime: "2024-11-03T16:00:00+00:00/PT1H", value: ValueUnion.double(6437.3760000000002)), ApparentTemperatureValue(validTime: "2024-11-03T17:00:00+00:00/PT1H", value: ValueUnion.double(8046.7200000000003)), ApparentTemperatureValue(validTime: "2024-11-03T18:00:00+00:00/PT2H", value: ValueUnion.double(9656.0640000000003)), ApparentTemperatureValue(validTime: "2024-11-03T20:00:00+00:00/PT1H", value: ValueUnion.double(14484.096))]
        ),
        transportWindSpeed: nil,
        transportWindDirection: nil,
        mixingHeight: nil,
        hainesIndex: nil,
        lightningActivityLevel: nil,
        twentyFootWindSpeed: nil,
        twentyFootWindDirection: nil,
        waveHeight: nil,
        wavePeriod: nil,
        waveDirection: nil,
        primarySwellHeight: nil,
        primarySwellDirection: nil,
        secondarySwellHeight: nil,
        secondarySwellDirection: nil,
        wavePeriod2: nil,
        windWaveHeight: nil,
        dispersionIndex: nil,
        pressure: nil,
        probabilityOfTropicalStormWinds: nil,
        probabilityOfHurricaneWinds: nil,
        potentialOf15MphWinds: nil,
        potentialOf25MphWinds: nil,
        potentialOf35MphWinds: nil,
        potentialOf45MphWinds: nil,
        potentialOf20MphWindGusts: nil,
        potentialOf30MphWindGusts: nil,
        potentialOf40MphWindGusts: nil,
        potentialOf50MphWindGusts: nil,
        potentialOf60MphWindGusts: nil,
        grasslandFireDangerIndex: nil,
        probabilityOfThunder: nil,
        davisStabilityIndex: nil,
        atmosphericDispersionIndex: nil,
        lowVisibilityOccurrenceRiskIndex: nil,
        stability: nil,
        redFlagThreatIndex: nil
    )
}
