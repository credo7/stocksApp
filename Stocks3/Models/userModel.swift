import Foundation

// MARK: - UserModel
struct UserModel: Codable {
    let quoteSummary: QuoteSummary
}

// MARK: - QuoteSummary
struct QuoteSummary: Codable {
    let result: [Result]
    let error: JSONNull?
}

// MARK: - Result
struct Result: Codable {
    let price: Price
}

// MARK: - Price
struct Price: Codable {
    let maxAge: Int
    let preMarketChange, preMarketPrice: AverageDailyVolume10Day
    let preMarketSource: String
    let postMarketChangePercent, postMarketChange: PostMarketChange
    let postMarketTime: Int
    let postMarketPrice: PostMarketChange
    let postMarketSource: String
    let regularMarketChangePercent, regularMarketChange: PostMarketChange
    let regularMarketTime: Int
    let priceHint: MarketCap
    let regularMarketPrice, regularMarketDayHigh, regularMarketDayLow: PostMarketChange
    let regularMarketVolume: MarketCap
    let averageDailyVolume10Day, averageDailyVolume3Month: AverageDailyVolume10Day
    let regularMarketPreviousClose: PostMarketChange
    let regularMarketSource: String
    let regularMarketOpen: PostMarketChange
    let strikePrice, openInterest: AverageDailyVolume10Day
    let exchange, exchangeName: String
    let exchangeDataDelayedBy: Int
    let marketState, quoteType, symbol: String
    let underlyingSymbol: JSONNull?
    let shortName, longName, currency, quoteSourceName: String
    let currencySymbol: String
    let fromCurrency, toCurrency, lastMarket: JSONNull?
    let volume24Hr, volumeAllCurrencies, circulatingSupply: AverageDailyVolume10Day
    let marketCap: MarketCap
}

// MARK: - AverageDailyVolume10Day
struct AverageDailyVolume10Day: Codable {
}

// MARK: - MarketCap
struct MarketCap: Codable {
    let raw: Int
    let fmt, longFmt: String
}

// MARK: - PostMarketChange
struct PostMarketChange: Codable {
    let raw: Double
    let fmt: String
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
