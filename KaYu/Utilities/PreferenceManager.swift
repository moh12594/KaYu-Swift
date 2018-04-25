//
//  PreferenceManager.swift
//  KaYu
//
//  Created by Mohamed SADAT on 25/04/2018.
//  Copyright © 2018 Mohamed SADAT. All rights reserved.
//

import Foundation

class PreferenceManager {
  
  private static let keyOnBoardingPassed = "onboarding_passed"
  
  class func storeOnBoadingPassed() {
    let userDefaults = UserDefaults.standard
    
    userDefaults.set(true, forKey: keyOnBoardingPassed)
  }
  
  class func isOnBoardingPassed() -> Bool {
    let userDefaults = UserDefaults.standard
    
    return userDefaults.bool(forKey: keyOnBoardingPassed)
  }
}
