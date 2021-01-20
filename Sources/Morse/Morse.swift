import Foundation

public extension String {
    static var morseAlphabet: [Character: String] = [
        // Symbols
        " ": "/",
        ".": ".-.-.-",
        ",": "--..--",
        "?": "..--..",
        "'": ".----.",
        "!": "-.-.--",
        "/": "-..-.",
        "(": "-.--.",
        ")": "-.--.-",
        "&": ".-...",
        ":": "---...",
        ";": "-.-.-.",
        "=": "-...-",
        "+": ".-.-.",
        "-": "-....-",
        "_": "..--.-",
        "\"": ".-..-.",
        "$": "...-..-",
        "@": ".--.-.",
        // Letters
        "a": ".-",
        "b": "-...",
        "c": "-.-.",
        "d": "-..",
        "e": ".",
        "f": "..-.",
        "g": "--.",
        "h": "....",
        "i": "..",
        "j": ".---",
        "k": "-.-",
        "l": ".-..",
        "m": "--",
        "n": "-.",
        "o": "---",
        "p": ".--.",
        "q": "--.-",
        "r": ".-.",
        "s": "...",
        "t": "-",
        "u": "..-",
        "v": "...-",
        "w": ".--",
        "x": "-..-",
        "y": "-.--",
        "z": "--..",
        // Digits
        "0": "-----",
        "1": ".----",
        "2": "..---",
        "3": "...--",
        "4": "....-",
        "5": ".....",
        "6": "-....",
        "7": "--...",
        "8": "---..",
        "9": "----."
    ]
    
    var toMorse: String {
        lowercased()
            .replacingOccurrences(of: "[\\s\n]+", with: " ", options: .regularExpression, range: nil)
            .map { String.morseAlphabet[$0] ?? "#" }
            .joined(separator: " ")
    }
    
    var fromMorse: String {
        split(separator: " ")
            .map { morse in
                String(String.morseAlphabet.first { (character, morseCode) -> Bool in
                    morse == morseCode
                }?.key ?? "#")
            }.joined()
            
    }
}
