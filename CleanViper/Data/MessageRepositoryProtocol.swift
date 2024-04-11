//
//  MessageRepositoryProtocol.swift
//  CleanViper
//
//  Created by Naela Fauzul Muna on 11/04/24.
//

import Foundation

protocol MessageRepositoryProtocol {
 
  func getWelcomeMessage(name: String) -> MessageEntity
 
}
