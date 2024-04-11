//
//  MessageUseCase.swift
//  CleanViper
//
//  Created by Naela Fauzul Muna on 11/04/24.
//

import Foundation

protocol MessageUseCase {
 
  func getMessage(name: String) -> MessageEntity
 
}
