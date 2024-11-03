//
//  CurrentWeather.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/3/24.
//

import Foundation


//NWS Current forecast API for Columbia, MO
/*
 https://api.weather.gov/gridpoints/LSX/38,92
 */


struct Current {
    let id: String?
    let type: String?
    let updateTime: Date?
    let validTimes: String?
    let elevation: Elevation?
    let forecastOffice: String?
    let gridID, gridX, gridY: String?
    let temperature, dewpoint, maxTemperature, minTemperature: ApparentTemperature?
    let relativeHumidity, apparentTemperature, wetBulbGlobeTemperature, heatIndex: ApparentTemperature?
    let windChill, skyCover, windDirection, windSpeed: ApparentTemperature?
    let windGust: ApparentTemperature?
    let weather, hazards: AtmosphericDispersionIndex?
    let probabilityOfPrecipitation, quantitativePrecipitation, iceAccumulation, snowfallAmount: ApparentTemperature?
    let snowLevel: AtmosphericDispersionIndex?
    let ceilingHeight, visibility, transportWindSpeed, transportWindDirection: ApparentTemperature?
    let mixingHeight: ApparentTemperature?
    let hainesIndex, lightningActivityLevel, twentyFootWindSpeed, twentyFootWindDirection: AtmosphericDispersionIndex?
    let waveHeight, wavePeriod, waveDirection, primarySwellHeight: AtmosphericDispersionIndex?
    let primarySwellDirection, secondarySwellHeight, secondarySwellDirection, wavePeriod2: AtmosphericDispersionIndex?
    let windWaveHeight, dispersionIndex, pressure, probabilityOfTropicalStormWinds: AtmosphericDispersionIndex?
    let probabilityOfHurricaneWinds, potentialOf15MphWinds, potentialOf25MphWinds, potentialOf35MphWinds: AtmosphericDispersionIndex?
    let potentialOf45MphWinds, potentialOf20MphWindGusts, potentialOf30MphWindGusts, potentialOf40MphWindGusts: AtmosphericDispersionIndex?
    let potentialOf50MphWindGusts, potentialOf60MphWindGusts, grasslandFireDangerIndex, probabilityOfThunder: AtmosphericDispersionIndex?
    let davisStabilityIndex, atmosphericDispersionIndex, lowVisibilityOccurrenceRiskIndex, stability: AtmosphericDispersionIndex?
    let redFlagThreatIndex: AtmosphericDispersionIndex?
}


// MARK: - ApparentTemperature
struct ApparentTemperature {
    let uom: String?
    let values: [ApparentTemperatureValue]?
}

// MARK: - ApparentTemperatureValue
struct ApparentTemperatureValue {
    let validTime: String?
    let value: ValueUnion?
}

enum ValueUnion {
    case double(Double)
    case valueValueClassArray([ValueValueClass])
    case null
}

// MARK: - ValueValueClass
struct ValueValueClass {
    let coverage: Coverage?
    let weather: Weather?
    let intensity: Intensity?
    let visibility: Elevation?
    let attributes: [Any?]?
}

enum Coverage: String {
    case chance
    case definite
    case likely
    case slightChance
}

enum Intensity: String {
    case heavy
    case light
    case moderate
}

// MARK: - Elevation
struct Elevation {
    let unitCode: UnitCode?
    let value: Double?
}

enum UnitCode: String {
    case wmoUnitKM
    case wmoUnitM
}

enum Weather: String {
    case rain
    case thunderstorms
}

// MARK: - AtmosphericDispersionIndex
struct AtmosphericDispersionIndex {
    let values: [ApparentTemperatureValue]?
}
