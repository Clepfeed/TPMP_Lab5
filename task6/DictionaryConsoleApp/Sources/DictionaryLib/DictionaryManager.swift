public struct Country1 {
    public var name: String
    public var square: Double
}

public struct Country2 {
    public var name: String
    public var population: Int
}

public class DictionaryManager {
    public var countrySquares: [String: Country1] = [:]
    public var countryPopulations: [String: Country2] = [:]

    public init() {}

    public func countElements(isFirstDict: Bool) -> Int {
        isFirstDict ? countrySquares.count : countryPopulations.count
    }

    public func getElement(byKey key: String, isFirstDict: Bool) -> String? {
        if isFirstDict, let country = countrySquares[key] {
            return "\(key): \(country.square) km²"
        } else if let country = countryPopulations[key] {
            return "\(key): \(country.population) people"
        }
        return nil
    }

    public func getAllElements(isFirstDict: Bool) -> [String] {
        if isFirstDict {
            return countrySquares.map { "\($0.key): \($0.value.square) km²" }
        } else {
            return countryPopulations.map { "\($0.key): \($0.value.population) people" }
        }
    }

    public func addElement(key: String, value: String, isFirstDict: Bool) {
        if isFirstDict, let square = Double(value) {
            countrySquares[key] = Country1(name: key, square: square)
        } else if let population = Int(value) {
            countryPopulations[key] = Country2(name: key, population: population)
        }
    }

    public func modifyElement(key: String, newValue: String, isFirstDict: Bool) {
        addElement(key: key, value: newValue, isFirstDict: isFirstDict)
    }

    public func sortByKey(isFirstDict: Bool) -> [String] {
        var sorted: [(key: String, value: Any)];
        if (isFirstDict){
            sorted = countrySquares.sorted(by: { $0.key < $1.key });
        } else {
            sorted = countryPopulations.sorted(by: { $0.key < $1.key });
        }
        return sorted.map { "\($0.key): \($0.value)" }
    }

    public func sortByValue(isFirstDict: Bool) -> [String] {
        if isFirstDict {
            return countrySquares.sorted { $0.value.square < $1.value.square }
                .map { "\($0.key): \($0.value.square) km²" }
        } else {
            return countryPopulations.sorted { $0.value.population < $1.value.population }
                .map { "\($0.key): \($0.value.population) people" }
        }
    }

    public func removeElement(byKey key: String, isFirstDict: Bool) {
        if isFirstDict {
            countrySquares.removeValue(forKey: key)
        } else {
            countryPopulations.removeValue(forKey: key)
        }
    }

    public func removeAll(isFirstDict: Bool) {
        if isFirstDict {
            countrySquares.removeAll()
        } else {
            countryPopulations.removeAll()
        }
    }
}

