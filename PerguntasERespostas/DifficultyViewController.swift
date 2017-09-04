//
//  DifficultyViewController.swift
//  PerguntasERespostas
//
//  Created by Renato on 22/03/17.
//  Copyright © 2017 Renato. All rights reserved.
//

import UIKit

class DifficultyViewController: UIViewController {
    @IBOutlet weak var buttonChooseEasy: UIButton!
    @IBOutlet weak var buttonChooseMedium: UIButton!
    @IBOutlet weak var labelChooseYourDifficulty: UILabel!
    @IBOutlet weak var buttonChooseHard: UIButton!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        buttonChooseEasy.layer.cornerRadius = 15
//        buttonChooseMedium.layer.cornerRadius = 15
//        buttonChooseHard.layer.cornerRadius = 15
        labelChooseYourDifficulty.layer.cornerRadius = 15

    
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
