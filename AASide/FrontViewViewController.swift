    //
//  FrontViewViewController.swift
//  AASide
//
//  Created by Hwang on 19/06/2019.
//  Copyright © 2019 Hwang. All rights reserved.
//

import UIKit

class FrontViewViewController: UIViewController {
    
    var delegate : ReveallViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btnSideBar = UIBarButtonItem(image: UIImage(named: "sidemenu.png"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(moveSide(_:)))
        
        self.navigationItem.leftBarButtonItem = btnSideBar
    }
    
    @objc func moveSide(_ sender : Any){
        
        if self.delegate?.isSideBarShowing == false {
            self.delegate?.openSideBar(nil)
        }
        else {
            self.delegate?.closeSideBar(nil)
        }
    }
}
