//
//  InicialViewController.swift
//  PerguntasERespostas
//
//  Created by Renato on 17/03/17.
//  Copyright © 2017 Renato. All rights reserved.
//

import UIKit
import AVFoundation

class InicialViewController: UIViewController {
    @IBOutlet weak var buttonStartGame: UIButton!
    @IBOutlet weak var buttonContact: UIButton!
    @IBOutlet weak var buttonAbout: UIButton!
    @IBOutlet weak var logoImage: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        buttonStartGame.layer.cornerRadius = 15
//        buttonContact.layer.cornerRadius = 15
//        buttonAbout.layer.cornerRadius = 15
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
