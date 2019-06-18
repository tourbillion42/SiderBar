//
//  SideBarViewController.swift
//  AASide
//
//  Created by Hwang on 19/06/2019.
//  Copyright © 2019 Hwang. All rights reserved.
//

import UIKit

class SideBarViewController: UITableViewController {
    
    let titles = ["메뉴 01","메뉴 02","메뉴 03","메뉴 04","메뉴 05"]
    let icons = [UIImage(named: "icon01.png"),UIImage(named: "icon02.png"),UIImage(named: "icon03.png"),UIImage(named: "icon04.png"),UIImage(named: "icon05.png")]

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titles.count
    }
    
    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menucell") ?? UITableViewCell(style: .default, reuseIdentifier: "menucell")
    
        cell.textLabel?.text = self.titles[indexPath.row]
        cell.imageView?.image = self.icons[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 14)
        
        return cell
    }
}
