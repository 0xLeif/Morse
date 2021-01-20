# Morse

To and from morse in Swift.

## Example

### Hello, World!
```swift
"Hello, World!".toMorse // .... . .-.. .-.. --- --..-- / .-- --- .-. .-.. -.. -.-.--

".... . .-.. .-.. --- --..-- / .-- --- .-. .-.. -.. -.-.--".fromMorse // hello, world!
```

### Alphabet
```swift
"abcdefghijklmnopqrstuvwxyz"
    .map { "\($0): \(String.morseAlphabet[$0] ?? "#")" }
    .joined(separator: "\n")

/*
a: .-
b: -...
c: -.-.
d: -..
e: .
f: ..-.
g: --.
h: ....
i: ..
j: .---
k: -.-
l: .-..
m: --
n: -.
o: ---
p: .--.
q: --.-
r: .-.
s: ...
t: -
u: ..-
v: ...-
w: .--
x: -..-
y: -.--
z: --..
*/
```
