//: [Previous](@previous)

import Foundation

// MARK: ServiceProtocol

protocol ServiceProtocol {
    
    func request() -> String
}

// MARK: Service

class RealService: ServiceProtocol {
    
    func request() -> String {
        return "realService request"
    }
}

class MockService: ServiceProtocol {
    
    func request() -> String {
        return "mokeService request"
    }
}

// MARK: ViewModel

class ViewModel<Service: ServiceProtocol> {
    
    private let _service: Service
    let text: String
    
    init(service: Service) {
        _service = service
        text = _service.request()
    }
}

// MARK: Use Case

let realService = RealService()
let viewModel = ViewModel(service: realService)
viewModel.text

// MARK: Test Case

let mockService = MockService()
let mockViewModel = ViewModel(service: mockService)
mockViewModel.text

