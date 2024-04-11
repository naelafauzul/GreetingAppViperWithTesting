//
//  MessageDataSourceProtocol.swift
//  CleanViper
//
//  Created by Naela Fauzul Muna on 11/04/24.
//

import Foundation

protocol MessageDataSourceProtocol {
 
  func getMessageFromSource(name: String) -> MessageEntity
 
}
