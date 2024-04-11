//
//  MessageUseCaseTests.swift
//  CleanViperTests
//
//  Created by Naela Fauzul Muna on 11/04/24.
//

import XCTest

@testable import CleanViper
final class MessageUseCaseTests: XCTestCase {
    
    static var input: String = "Dicoding"
    static var messageEntitiy = MessageEntity(
        welcomeMessage: "Hello \(input) Welcome to Clean Architecture"
    )
    
    func testGetDataFromUseCase() throws {
        // Given
        let usecase = MessageInteractorMock()
        
        // When
        let result = usecase.getMessage(name: MessageUseCaseTests.input)
        XCTAssert(usecase.verify())
        
        // Then
        XCTAssert(
            result.welcomeMessage.contains(
                MessageUseCaseTests.messageEntitiy.welcomeMessage
            )
        )
    }
}

extension MessageUseCaseTests {
    
    class MessageInteractorMock: MessageUseCase {
        var functionWasCalled = false
        
        func getMessage(name: String) -> MessageEntity {
            functionWasCalled = true
            return messageEntitiy
        }
        
        func verify() -> Bool {
            return functionWasCalled
        }
    }
    
}
