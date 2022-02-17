//
//  ViewController.swift
//  FilmesSD
//
//  Created by Marcela Menezes Silva on 16/02/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var filme: [Resultados] = []
    
    
    @IBOutlet weak var filmesTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmesTableView.dataSource = self
        
        dadosApi()
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CelulaTableViewCell
        cell.adicionaImage(filme: filme[indexPath.row])
      
        return cell
    }
    func dadosApi() {
        FilmesAPI.loadFilmes { filmes in
            if let filmes = filmes {
                self.filme += filmes.results
                DispatchQueue.main.async {



                            self.filmesTableView.reloadData()



                          }
            }
        }
    }
    
    
}

