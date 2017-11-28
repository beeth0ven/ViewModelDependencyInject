//: [Previous](@previous)

import Foundation

// MARK: ServiceProtocol

protocol ServiceProtocol {
    
    static func request() -> String
}

// MARK: Service

enum RealService: ServiceProtocol {
    
    static func request() -> String {
        return "RealService request"
    }
}

enum MockService: ServiceProtocol {
    
    static func request() -> String {
        return "MockService request"
    }
}

// MARK: ViewModel

class ViewModel<Service: ServiceProtocol> {
    
    let text: String
    
    init() {
        text = Service.request()
    }
}

// MARK: Use Case

let viewModel = ViewModel<RealService>()
viewModel.text

// MARK: Test Case

let mockViewModel = ViewModel<MockService>()
mockViewModel.text

