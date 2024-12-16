func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) { 
        if Bool.random() { // Simulate random success or failure
            completion(.success(["Data 1", "Data 2"]))
        } else {
            completion(.failure(NSError(domain: "NetworkError", code: -1, userInfo: nil)))
        }
    }
}