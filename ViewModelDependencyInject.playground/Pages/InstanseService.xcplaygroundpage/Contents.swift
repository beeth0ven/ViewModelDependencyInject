//: Playground - noun: a place where people can play

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

class ViewModel {
    
    private let _service: ServiceProtocol
    let text: String
    
    init(service: ServiceProtocol) {
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
