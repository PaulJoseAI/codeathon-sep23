func maxProfit(_ prices: [Int]) -> Int {
    var minPrice = Int.max
    var maxProfit = 0
    
    for price in prices {
        if price < minPrice {
            minPrice = price
        } else if price - minPrice > maxProfit {
            maxProfit = price - minPrice
        }
    }
    
    if maxProfit > 0 {
        return maxProfit
    } else {
        return -1
    }
}

/// function call
let stockPrices = [7, 1, 5, 3, 6, 4]
let maximumProfit = maxProfit(stockPrices)
print("Maximum profit: \(maximumProfit)")

/// Test case

let testCases = [
    // Test case 1: Profit can be made
    ([7, 1, 5, 3, 6, 4], 5),
    
    // Test case 2: No profit can be made
    ([7, 6, 4, 3, 1], -1),
    
    // Test case 3: Empty array
    ([], -1),
    
    // Test case 4: Single price
    ([10], -1),
    
    // Test case 5: Multiple prices with equal values
    ([5, 5, 5, 5, 5], 0),
    
    // Test case 6: Maximum profit at the beginning
    ([10, 7, 6, 4, 3, 1], 0),
    
    // Test case 7: Maximum profit at the end
    ([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 9),
]

for (prices, expected) in testCases {
    let result = maxProfit(prices)
    print("Stock Prices: \(prices)")
    print("Expected Maximum Profit: \(expected)")
    print("Actual Maximum Profit: \(result)")
    print("Test Result: \(expected == result ? "Passed" : "Failed")")
    print("--------------------------")
}

