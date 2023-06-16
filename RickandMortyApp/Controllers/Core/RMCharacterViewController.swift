//
//  RMCharacterViewController.swift
//  RickandMortyApp
//
//  Created by Athul Santhosh Lal on 16/06/23.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ii) We are supporting light and dark mode, so we are opting for systemBackground
        view.backgroundColor = .systemBackground
        
        //i) Calling title
        title = "Characters"
    }

}
