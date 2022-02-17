//
//  CelulaTableViewCell.swift
//  FilmesSD
//
//  Created by Marcela Menezes Silva on 17/02/22.
//

import UIKit

class CelulaTableViewCell: UITableViewCell {

    @IBOutlet weak var imagemView: UIImageView!
    
    func adicionaImage(filme: Resultados){
        FilmesAPI.loadImage(restoURL: filme.poster_path) { imagem in
            if let imagem = imagem {
                self.imagemView.image = imagem
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
