//
//  MessageDataSource.swift
//  CleanViper
//
//  Created by Naela Fauzul Muna on 11/04/24.
//

import Foundation

class MessageDataSource: MessageDataSourceProtocol {
 
  func getMessageFromSource(name: String) -> MessageEntity {
    return MessageEntity(
      welcomeMessage: "Hello \(name) Welcome to Clean Architecture"
    )
  }
 
}
