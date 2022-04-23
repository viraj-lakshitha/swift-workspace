enum DataError: Error {
    case EmptyPath
    case InvalidPath
}

let filepath = ""

func loadData(path: String) throws -> Bool {
    guard path.contains("/") else {
        throw DataError.InvalidPath
    }

    guard !path.isEmpty else {
        throw DataError.EmptyPath
    }
    return true
}

// Catch errors using do-catch
do {
    try loadData(path: filepath)
    print("Complete data fetch")
} catch DataError.EmptyPath {
    print("Empty path detected")
} catch DataError.InvalidPath {
    print("Invalid path detected")
} catch {
    print("Unknown error")
}

// Catch errors using if statement
if let isDataLoaded = try? loadData(path: filepath) {
    if isDataLoaded {
        print("Successfully data fetched!")
    }
} else {
    print("Error caught")
}