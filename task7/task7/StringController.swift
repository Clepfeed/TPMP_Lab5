
class StringController {
    private let processor: StringProcessor
    private let view: StringView

    init(strings: [String]?) {
        self.processor = StringProcessor(strings: strings)
        self.view = StringView()
    }

    func processAndDisplay() {
        let result = processor.removeStringsWithDuplicateCharacters()
        view.display(strings: result)
    }
}
