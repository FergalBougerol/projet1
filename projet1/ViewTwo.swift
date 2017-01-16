//
//  ViewTwo.swift
//  projet1
//
//  Created by Dubois Diane  on 16/01/2017.
//  Copyright © 2017 fergal bougerol. All rights reserved.
//

import Foundation
import UIKit

class ViewTwo : UIViewController {
    
    // Outlets
    @IBOutlet var Label1: UILabel!
    
    @IBOutlet var ImageJaune: UIImageView!
    
    @IBOutlet var Segment: UISegmentedControl!
    @IBOutlet var Horaire: UILabel!
    
    @IBAction func Segment(_ sender: UISegmentedControl) {
        if(Segment.selectedSegmentIndex == 0){
            Horaire.text = "Lundi Mercredi Vendredi 21h"
            ImageJaune.image = #imageLiteral(resourceName: "image-001-9-001-1102-poubelle-verte-tri-du-verre")
            
                            }
        if(Segment.selectedSegmentIndex == 1){
            Horaire.text = "Mardi Jeudi Samedi 8h"
            ImageJaune.image = #imageLiteral(resourceName: "poubelle-jaune-et-grise-198x300")
        }
        
        
        
    }
    
    
    // Variables
    var LabelText:String = "Déchet ménager,Sac plastique"
    
    
    // Fonctions
    func poubelle() {
        switch LabelText {
        case "poubelle verte":
            print ("Déchet ménager,Sac plastique")
        case "poubelle jaune":
            print("Tous les papiers, Carton, Bouteille plastique,\n Emballage métal, Petit électroménager")
        default:""
            
        }
    }
    
    
    override func viewDidLoad() {
        
        poubelle()
        
        Label1.text = LabelText
        
    }
    
}

