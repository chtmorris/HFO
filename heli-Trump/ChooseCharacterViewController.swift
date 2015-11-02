//
//  ChooseCharacterViewController.swift
//  heli-Trump
//
//  Created by Charlie Morris on 31/10/2015.
//  Copyright © 2015 chtmorris. All rights reserved.
//

import UIKit

class ChooseCharacterViewController: UIViewController {

    var textfield: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func HillaryButton(sender: UIButton) {
        textfield = "Hillary"
    }
    
    @IBAction func BenButtonPressed(sender: UIButton) {
        textfield = "Ben"
    }
    
    @IBAction func trumpButtonPressed(sender: UIButton) {
        textfield = "Trump"
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let svc = segue.destinationViewController as! ViewController;
        svc.toPass = textfield
    }

    
}
