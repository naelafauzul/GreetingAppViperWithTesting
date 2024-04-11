//
//  MessagePresenter.swift
//  CleanViper
//
//  Created by Naela Fauzul Muna on 11/04/24.
//

import Foundation

class MessagePresenter: MessagePresenterProtocol {
 
  private let messageUseCase: MessageUseCase
 
  init(useCase: MessageUseCase) {
    self.messageUseCase = useCase
  }
 
  func getMessage(name: String) -> MessageEntity {
    return messageUseCase.getMessage(name: name)
  }
 
}

final class Injection: NSObject {
 
  private func provideDataSource() -> MessageDataSourceProtocol {
    return MessageDataSource()
  }
 
  private func provideRepository() -> MessageRepositoryProtocol {
    let messageDataSource = provideDataSource()
    return MessageRepository(dataSource: messageDataSource)
  }
 
  func provideUseCase() -> MessageUseCase {
    let messageRepository = provideRepository()
    return MessageInteractor(repository: messageRepository)
  }
 
}
