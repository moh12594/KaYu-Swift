//
//  OnBoardingStepVC.swift
//  KaYu
//
//  Created by Mohamed SADAT on 25/04/2018.
//  Copyright © 2018 Mohamed SADAT. All rights reserved.
//

import UIKit

class OnBoardingStepVC: UIViewController {
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var validateButton: UIButton!
  
  var step: OnBoardingStep!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.titleLabel?.text = step.title
    self.descriptionLabel?.text = step.description
    self.validateButton?.isHidden = !step.isLastStep
    
  }

  @IBAction func validateButtonClicked(_ sender: Any) {
    let identifier = HOME_ID
    if let tabBarController = self.storyboard?.instantiateViewController(withIdentifier: identifier) {
      
      PreferenceManager.storeOnBoadingPassed()
      self.show(tabBarController, sender: sender)
    }
  }
  
}
