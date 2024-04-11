//
//  MessageInteractor.swift
//  CleanViper
//
//  Created by Naela Fauzul Muna on 11/04/24.
//

import Foundation

class MessageInteractor: MessageUseCase {
 
  private let messageRepository: MessageRepositoryProtocol
 
  init(repository: MessageRepositoryProtocol) {
    self.messageRepository = repository
  }
 
  func getMessage(name: String) -> MessageEntity {
    return messageRepository.getWelcomeMessage(name: name)
  }
 
}
