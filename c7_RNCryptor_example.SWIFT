// Encryption
let data: NSData = ...
let password = "Secret password"
let ciphertext = RNCryptor.encryptData(data, password: password)

// Decryption
do {
    let originalData = try RNCryptor.decryptData(ciphertext, password: password)
    // ...
} catch {
    print(error)
}
