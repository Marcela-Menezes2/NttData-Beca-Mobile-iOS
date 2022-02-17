//
//  FilmesViewController.swift
//  FilmesSD
//
//  Created by Marcela Menezes Silva on 17/02/22.
//

import UIKit
import WebKit

class FilmesViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    override func viewDidLoad() {
         super.viewDidLoad()
    }
}
