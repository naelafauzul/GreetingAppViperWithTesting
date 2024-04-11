//
//  MessageRepository.swift
//  CleanViper
//
//  Created by Naela Fauzul Muna on 11/04/24.
//

import Foundation

class MessageRepository: MessageRepositoryProtocol {
 
  private let messageDataSource: MessageDataSourceProtocol
 
  init(dataSource: MessageDataSourceProtocol) {
    self.messageDataSource = dataSource
  }
 
  func getWelcomeMessage(name: String) -> MessageEntity {
    messageDataSource.getMessageFromSource(name: name)
  }
 
}
