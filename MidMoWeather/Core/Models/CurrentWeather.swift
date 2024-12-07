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

// MARK: - Welcome
struct Welcome: Codable {
    let context: [ContextElement]?
    let id: String?
    let type: String?
    let geometry: Geometry?
    let properties: Properties?

    enum CodingKeys: String, CodingKey {
        case context = "@context"
        case id, type, geometry, properties
    }
}

enum ContextElement: Codable {
    case contextClass(ContextClass)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        if let x = try? container.decode(ContextClass.self) {
            self = .contextClass(x)
            return
        }
        throw DecodingError.typeMismatch(ContextElement.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for ContextElement"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .contextClass(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - ContextClass
struct ContextClass: Codable {
    let version: String?
    let wmoUnit, nwsUnit: String?

    enum CodingKeys: String, CodingKey {
        case version = "@version"
        case wmoUnit, nwsUnit
    }
}

// MARK: - Geometry
struct Geometry: Codable {
    let type: String?
    let coordinates: [[[Double]]]?
}

// MARK: - Properties
struct Properties: Codable {
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

    enum CodingKeys: String, CodingKey {
        case id = "@id"
        case type = "@type"
        case updateTime, validTimes, elevation, forecastOffice
        case gridID = "gridId"
        case gridX, gridY, temperature, dewpoint, maxTemperature, minTemperature, relativeHumidity, apparentTemperature, wetBulbGlobeTemperature, heatIndex, windChill, skyCover, windDirection, windSpeed, windGust, weather, hazards, probabilityOfPrecipitation, quantitativePrecipitation, iceAccumulation, snowfallAmount, snowLevel, ceilingHeight, visibility, transportWindSpeed, transportWindDirection, mixingHeight, hainesIndex, lightningActivityLevel, twentyFootWindSpeed, twentyFootWindDirection, waveHeight, wavePeriod, waveDirection, primarySwellHeight, primarySwellDirection, secondarySwellHeight, secondarySwellDirection, wavePeriod2, windWaveHeight, dispersionIndex, pressure, probabilityOfTropicalStormWinds, probabilityOfHurricaneWinds
        case potentialOf15MphWinds = "potentialOf15mphWinds"
        case potentialOf25MphWinds = "potentialOf25mphWinds"
        case potentialOf35MphWinds = "potentialOf35mphWinds"
        case potentialOf45MphWinds = "potentialOf45mphWinds"
        case potentialOf20MphWindGusts = "potentialOf20mphWindGusts"
        case potentialOf30MphWindGusts = "potentialOf30mphWindGusts"
        case potentialOf40MphWindGusts = "potentialOf40mphWindGusts"
        case potentialOf50MphWindGusts = "potentialOf50mphWindGusts"
        case potentialOf60MphWindGusts = "potentialOf60mphWindGusts"
        case grasslandFireDangerIndex, probabilityOfThunder, davisStabilityIndex, atmosphericDispersionIndex, lowVisibilityOccurrenceRiskIndex, stability, redFlagThreatIndex
    }
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

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode([ValueValueClass].self) {
            self = .valueValueClassArray(x)
            return
        }
        if let x = try? container.decode(Double.self) {
            self = .double(x)
            return
        }
        if container.decodeNil() {
            self = .null
            return
        }
        throw DecodingError.typeMismatch(ValueUnion.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for ValueUnion"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .double(let x):
            try container.encode(x)
        case .valueValueClassArray(let x):
            try container.encode(x)
        case .null:
            try container.encodeNil()
        }
    }
}

// MARK: - ValueValueClass
struct ValueValueClass: Codable {
    let coverage, weather, intensity: String?
    let visibility: Elevation?
    let attributes: [JSONAny]?
}

// MARK: - Elevation
struct Elevation: Codable {
    let unitCode: String?
    let value: Double?
}

// MARK: - AtmosphericDispersionIndex
struct AtmosphericDispersionIndex: Codable {
    let values: [ApparentTemperatureValue]?
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
            return true
    }

    public var hashValue: Int {
            return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if !container.decodeNil() {
                    throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
            }
    }

    public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
            return nil
    }

    required init?(stringValue: String) {
            key = stringValue
    }

    var intValue: Int? {
            return nil
    }

    var stringValue: String {
            return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
            let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
            return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
            let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
            return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
            if let value = try? container.decode(Bool.self) {
                    return value
            }
            if let value = try? container.decode(Int64.self) {
                    return value
            }
            if let value = try? container.decode(Double.self) {
                    return value
            }
            if let value = try? container.decode(String.self) {
                    return value
            }
            if container.decodeNil() {
                    return JSONNull()
            }
            throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
            if let value = try? container.decode(Bool.self) {
                    return value
            }
            if let value = try? container.decode(Int64.self) {
                    return value
            }
            if let value = try? container.decode(Double.self) {
                    return value
            }
            if let value = try? container.decode(String.self) {
                    return value
            }
            if let value = try? container.decodeNil() {
                    if value {
                            return JSONNull()
                    }
            }
            if var container = try? container.nestedUnkeyedContainer() {
                    return try decodeArray(from: &container)
            }
            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
                    return try decodeDictionary(from: &container)
            }
            throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
            if let value = try? container.decode(Bool.self, forKey: key) {
                    return value
            }
            if let value = try? container.decode(Int64.self, forKey: key) {
                    return value
            }
            if let value = try? container.decode(Double.self, forKey: key) {
                    return value
            }
            if let value = try? container.decode(String.self, forKey: key) {
                    return value
            }
            if let value = try? container.decodeNil(forKey: key) {
                    if value {
                            return JSONNull()
                    }
            }
            if var container = try? container.nestedUnkeyedContainer(forKey: key) {
                    return try decodeArray(from: &container)
            }
            if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
                    return try decodeDictionary(from: &container)
            }
            throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
            var arr: [Any] = []
            while !container.isAtEnd {
                    let value = try decode(from: &container)
                    arr.append(value)
            }
            return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
            var dict = [String: Any]()
            for key in container.allKeys {
                    let value = try decode(from: &container, forKey: key)
                    dict[key.stringValue] = value
            }
            return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
            for value in array {
                    if let value = value as? Bool {
                            try container.encode(value)
                    } else if let value = value as? Int64 {
                            try container.encode(value)
                    } else if let value = value as? Double {
                            try container.encode(value)
                    } else if let value = value as? String {
                            try container.encode(value)
                    } else if value is JSONNull {
                            try container.encodeNil()
                    } else if let value = value as? [Any] {
                            var container = container.nestedUnkeyedContainer()
                            try encode(to: &container, array: value)
                    } else if let value = value as? [String: Any] {
                            var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                            try encode(to: &container, dictionary: value)
                    } else {
                            throw encodingError(forValue: value, codingPath: container.codingPath)
                    }
            }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
            for (key, value) in dictionary {
                    let key = JSONCodingKey(stringValue: key)!
                    if let value = value as? Bool {
                            try container.encode(value, forKey: key)
                    } else if let value = value as? Int64 {
                            try container.encode(value, forKey: key)
                    } else if let value = value as? Double {
                            try container.encode(value, forKey: key)
                    } else if let value = value as? String {
                            try container.encode(value, forKey: key)
                    } else if value is JSONNull {
                            try container.encodeNil(forKey: key)
                    } else if let value = value as? [Any] {
                            var container = container.nestedUnkeyedContainer(forKey: key)
                            try encode(to: &container, array: value)
                    } else if let value = value as? [String: Any] {
                            var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                            try encode(to: &container, dictionary: value)
                    } else {
                            throw encodingError(forValue: value, codingPath: container.codingPath)
                    }
            }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
            if let value = value as? Bool {
                    try container.encode(value)
            } else if let value = value as? Int64 {
                    try container.encode(value)
            } else if let value = value as? Double {
                    try container.encode(value)
            } else if let value = value as? String {
                    try container.encode(value)
            } else if value is JSONNull {
                    try container.encodeNil()
            } else {
                    throw encodingError(forValue: value, codingPath: container.codingPath)
            }
    }

    public required init(from decoder: Decoder) throws {
            if var arrayContainer = try? decoder.unkeyedContainer() {
                    self.value = try JSONAny.decodeArray(from: &arrayContainer)
            } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
                    self.value = try JSONAny.decodeDictionary(from: &container)
            } else {
                    let container = try decoder.singleValueContainer()
                    self.value = try JSONAny.decode(from: container)
            }
    }

    public func encode(to encoder: Encoder) throws {
            if let arr = self.value as? [Any] {
                    var container = encoder.unkeyedContainer()
                    try JSONAny.encode(to: &container, array: arr)
            } else if let dict = self.value as? [String: Any] {
                    var container = encoder.container(keyedBy: JSONCodingKey.self)
                    try JSONAny.encode(to: &container, dictionary: dict)
            } else {
                    var container = encoder.singleValueContainer()
                    try JSONAny.encode(to: &container, value: self.value)
            }
    }
}
