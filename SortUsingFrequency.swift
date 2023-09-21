func sortStringByFrequency(_ str: String) -> String {
    var frequencyDict: [Character: Int] = [:]
    
    // Calculate the frequency of each character
    for char in str {
        frequencyDict[char, default: 0] += 1
    }
    
    // Sort the characters based on their frequency in descending order
    let sortedChars = frequencyDict.sorted { $0.value > $1.value }
    
    // Create the sorted string
    var sortedString = ""
    for (char, frequency) in sortedChars {
        sortedString += String(repeating: char, count: frequency)
    }
    
    return sortedString
}

/// Execute

let inputString = "abracadabra"
let sortedString = sortStringByFrequency(inputString)
print(sortedString) // Output: "aaaaabrrccd"

/// Test case

func testSortStringByFrequency() {
    let inputString = "abracadabra"
    let expectedOutput = "aaaaabrrccd"
    
    let sortedString = sortStringByFrequency(inputString)
    
    assert(sortedString == expectedOutput, "Test case failed!")
    print("Test case passed!")
}

// Run the test case
testSortStringByFrequency()
