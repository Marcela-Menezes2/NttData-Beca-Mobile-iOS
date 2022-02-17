//
//  FilmesApi.swift
//  FilmesSD
//
//  Created by Marcela Menezes Silva on 17/02/22.
//

import Foundation
import Alamofire
import AlamofireImage

class FilmesAPI {


    static private let basePath = "https://api.themoviedb.org/3/trending/movie/week?"
    static private let publicKey = "770ea6139135f40466d2f52498a53b36"



    class func loadFilmes (_ onComplete: @escaping (Filmes?) -> Void) {
      let url = basePath + getCredentials()
        print(url)

        AF.request(url).responseJSON { (response) in
            guard let data = response.data,
                  let welcome = try? JSONDecoder().decode(Filmes.self, from: data) else {
                      onComplete(nil)
                      print("não deu certo")
                     return
                      
                  }

            onComplete(welcome)
        }

    }

    private class func getCredentials() -> String {
      return "api_key=\(publicKey)&language=pt-BR"
    }

    class func loadImage(restoURL: String, expressao: @escaping (UIImage?) -> Void) {
        AF.request("https://image.tmdb.org/t/p/w500\(restoURL)").responseImage { response in
    

          if case .success(let image) = response.result {
              expressao(image)
           }
      }
  }

}


