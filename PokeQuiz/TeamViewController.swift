//
//  TeamViewController.swift
//  PokeQuiz
//
//  Created by Евгений Бердашкевич on 15.08.17.
//  Copyright © 2017 Alexander Ganzer. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController {
    var teamSave:AppLoader?
    @IBOutlet weak var btnChoseBlue: UIButton!
    @IBOutlet weak var btnChoseRed: UIButton!
    @IBOutlet weak var btnChoseYellow: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnChoseBlue.addTarget(self, action: #selector(buttonBlueAction), for: .touchUpInside)
    }
    func buttonBlueAction(sender: UIButton!) {
        teamSave = AppLoader(team:"Mystic")
        teamSave!.saveTeam()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


