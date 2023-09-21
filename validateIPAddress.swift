func validateIPAddress(_ ipAddress: String) -> Bool {
    // Split the IP address into its components
    let components = ipAddress.split(separator: ".")
    
    // Check if the IP address has 4 components
    guard components.count == 4 else {
        return false
    }
    
    // Check each component of the IP address
    for component in components {
        // Check if the component is a valid integer
        guard let intValue = Int(component) else {
            return false
        }
        
        // Check if the component is within the valid range of 0 to 255
        guard intValue >= 0 && intValue <= 255 else {
            return false
        }
    }
    
    return true
}


/// Function call

let ipAddress = "192.168.0.1"
let isValid = validateIPAddress(ipAddress)
print(isValid) // Output: true


/// Test case

func testValidateIPAddress() {
    let validIPAddress = "192.168.0.1"
    let invalidIPAddress = "256.0.0.1"
    
    let isValid1 = validateIPAddress(validIPAddress)
    let isValid2 = validateIPAddress(invalidIPAddress)
    
    assert(isValid1 == true, "Valid IP address test failed")
    assert(isValid2 == false, "Invalid IP address test failed")
    
    print("All test cases passed")
}

testValidateIPAddress()
