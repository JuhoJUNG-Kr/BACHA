//
//  Services.swift
//  Bacha
//
//  Created by 정주호 on 07/03/2024.
//

import Foundation

protocol ServicesType {
  
  var authService: AuthenticationServiceType { get set }
}

class Services: ServicesType {
  
  var authService: AuthenticationServiceType
  
  init() {
    self.authService = AuthenticationService()
  }
}

class StubService: ServicesType {
  
  var authService: AuthenticationServiceType = StubAuthenticationService()
}
