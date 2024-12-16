func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) { [weak self] in 
        guard let self = self else { return } // Check if self is still valid 
        if Bool.random() { 
            completion(.success(["Data 1", "Data 2"]))
        } else {
            completion(.failure(NSError(domain: "NetworkError", code: -1, userInfo: nil)))
        }
    }
}