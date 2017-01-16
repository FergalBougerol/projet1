//
//  ViewController.swift
//  projet1
//
//  Created by Dubois Diane  on 16/01/2017.
//  Copyright © 2017 fergal bougerol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Outlets
    @IBOutlet var Text: UITextField!
    
    // Variables
    var label1 = "poubelle verte"
    var label2 = "poubelle jaune"
    var result1:String? = "Déchet ménager, Sac plastique"
    var result2:String? = "Tous les papiers, Carton, Bouteille plastique,\n Emballage métal, Petit électroménager"
    
    // Actions
    @IBAction func envoyerAction(_ sender: UIButton) {
    }

    // View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController : ViewTwo = segue.destination as! ViewTwo
        
        DestViewController.LabelText = Text.text!
        
        if DestViewController.LabelText == "\(label1)" {
            DestViewController.LabelText = result1!
        } else if DestViewController.LabelText == "\(label2)" {
            DestViewController.LabelText = result2!
        }
        
        
        
    }

}



