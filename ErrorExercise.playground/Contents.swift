let file= open(“file.txt”)


do {
    defer {
        file.close()
    }
 
    let result = try readFile(file)
} catch {
    // Handle errors here
}
