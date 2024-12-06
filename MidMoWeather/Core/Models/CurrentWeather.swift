//
//  CurrentWeather.swift
//  MidMoWeather
//
//  Created by Brent Beamer on 11/3/24.
//

import Foundation
import MapKit

//NWS Current forecast API for Columbia, MO
/*
 https://api.weather.gov/gridpoints/LSX/38,92
 */

struct Welcome {
    let context: [ContextElement]?
    let id: String?
    let type: String?
    let geometry: Geometry?
    let properties: Current?
}

enum ContextElement {
    case contextClass(ContextClass)
    case string(String)
}

// MARK: - ContextClass
struct ContextClass {
    let version: String?
    let wmoUnit, nwsUnit: String?
}

// MARK: - Geometry
struct Geometry {
    let type: String?
    let coordinates: [[[Double]]]?
}


struct Current: Identifiable, Codable {
    let id: String?
    let type: String?
    let updateTime: String?
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
struct ApparentTemperature: Codable {
    let uom: String?
    let values: [ApparentTemperatureValue]?
}

// MARK: - ApparentTemperatureValue
struct ApparentTemperatureValue: Codable {
    let validTime: String?
    let value: ValueUnion?
}

enum ValueUnion: Codable {
    case double(Double)
    case valueValueClassArray([ValueValueClass])
    case null
}

// MARK: - ValueValueClass
struct ValueValueClass: Codable {
    let coverage: Coverage?
    let weather: Weather?
    let intensity: Intensity?
    let visibility: Elevation?
    //let attributes: [Any?]?
}

enum Coverage: String, Codable {
    case chance
    case definite
    case likely
    case slightChance
}

enum Intensity: String, Codable {
    case heavy
    case light
    case moderate
}

// MARK: - Elevation
struct Elevation: Codable {
    let unitCode: UnitCode?
    let value: Double?
}

enum UnitCode: String, Codable {
    case wmoUnitKM
    case wmoUnitM
}

enum Weather: String, Codable {
    case rain
    case thunderstorms
}

// MARK: - AtmosphericDispersionIndex
struct AtmosphericDispersionIndex: Codable {
    let values: [ApparentTemperatureValue]?
}
