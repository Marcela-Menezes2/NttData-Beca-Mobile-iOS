//
//  FilmesTableViewController.swift
//  FilmesSD
//
//  Created by Marcela Menezes Silva on 17/02/22.
//

import UIKit

class FilmesTableViewController: UITableViewController {
   
    var label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        return label
}()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 0
        }
    }
        
    }
