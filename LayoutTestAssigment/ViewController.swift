//
//  ViewController.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .mainBackgroundColor
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func screenOneTap(_ sender: Any) {
        
        guard let navigation = self.navigationController else { return }
        Navigation.navigateOneScreen(in: navigation)
       
    }
    
    @IBAction func screenTwoTap(_ sender: Any) {
        guard let navigation = self.navigationController else { return }
        Navigation.navigateTwoScreen(in: navigation)
    }
    
    @IBAction func screenThreeTap(_ sender: Any) {
        guard let navigation = self.navigationController else { return }
        Navigation.navigateThreeScreen(in: navigation)
    }
    
    
    

}

