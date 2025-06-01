
class StringProcessor {
    var strings: [String]?

    init(strings: [String]?) {
        self.strings = strings
    }

    func removeStringsWithDuplicateCharacters() -> [String] {
        return strings?.filter { string in
            var seen = Set<Character>()
            for char in string {
                if seen.contains(char) {
                    return false
                }
                seen.insert(char)
            }
            return true
        } ?? []
    }
}
