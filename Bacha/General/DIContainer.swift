//
//  DIContainer.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import Foundation

class DIContainer: ObservableObject {
  var services: ServicesType
  
  init(services: ServicesType) {
    self.services = services
  }
}
