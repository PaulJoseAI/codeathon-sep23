func sortArrayAscending(_ array: [Int]) -> [Int] {
    return array.sorted()
}

let numbers = [5, 2, 8, 1, 9]
let sortedNumbers = sortArrayAscending(numbers)
print(sortedNumbers)


/// Test case

func sortArrayAscending(_ array: [Int]) -> [Int] {
    return array.sorted()
}

// Test Case 1: Sorting an array with positive numbers
let positiveNumbers = [5, 2, 8, 1, 9]
let sortedPositiveNumbers = sortArrayAscending(positiveNumbers)
print(sortedPositiveNumbers) // Output: [1, 2, 5, 8, 9]

// Test Case 2: Sorting an array with negative numbers
let negativeNumbers = [-3, -9, -1, -5, -2]
let sortedNegativeNumbers = sortArrayAscending(negativeNumbers)
print(sortedNegativeNumbers) // Output: [-9, -5, -3, -2, -1]

// Test Case 3: Sorting an array with duplicates
let arrayWithDuplicates = [7, 3, 5, 2, 7, 1, 3]
let sortedArrayWithDuplicates = sortArrayAscending(arrayWithDuplicates)
print(sortedArrayWithDuplicates) // Output: [1, 2, 3, 3, 5, 7, 7]

// Test Case 4: Sorting an already sorted array
let alreadySortedArray = [1, 2, 3, 4, 5]
let sortedAlreadySortedArray = sortArrayAscending(alreadySortedArray)
print(sortedAlreadySortedArray) // Output: [1, 2, 3, 4, 5]

// Test Case 5: Sorting an empty array
let emptyArray: [Int] = []
let sortedEmptyArray = sortArrayAscending(emptyArray)
print(sortedEmptyArray) // Output: []
