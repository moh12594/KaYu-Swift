//
//  AppDelegate.swift
//  KaYu
//
//  Created by Mohamed SADAT on 25/04/2018.
//  Copyright © 2018 Mohamed SADAT. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let pageViewController = UIPageViewController()
    
    
    let steps = [OnBoardingStep(title: "Bienvenue dans l'app", description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum", isLastStep: false), OnBoardingStep(title: "Des trucs de oufs !", description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum", isLastStep: false), OnBoardingStep(title: "YOLO Maggle !", description: "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum", isLastStep: true)]
    
    var viewControllers = [OnBoardingStepVC]()
    
    for step in steps {
      if let stepVC = storyboard.instantiateViewController(withIdentifier: ON_BOARDING) as? OnBoardingStepVC {
        stepVC.updateOnBoarding(title: step.title, description: step.description, isLastStep: step.isLastStep)
        viewControllers.append(stepVC)
      }
      
      pageViewController.setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
      window?.rootViewController = pageViewController
    }
    
    
    
    return true
  }

  func applicationWillResignActive(_ application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(_ application: UIApplication) {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(_ application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(_ application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

