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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  func updateOnBoarding(title: String, description: String, isLastStep: Bool) {
    
    self.titleLabel?.text = title
    self.descriptionLabel?.text = description
    self.validateButton?.isHidden = !isLastStep
  }
  
  @IBAction func validateButtonClicked(_ sender: Any) {
    
  }
  
  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  // Get the new view controller using segue.destinationViewController.
  // Pass the selected object to the new view controller.
  }
  */

}
