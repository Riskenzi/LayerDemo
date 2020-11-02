//
//  ViewController.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var OneButton: UIButton!
    
    @IBOutlet weak var TwoButton: UIButton!
    
    @IBOutlet weak var ThreeButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .mainBackgroundColor
        
        OneButton.makeRoundButton(18)
        TwoButton.makeRoundButton(18)
        ThreeButton.makeRoundButton(18)
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

