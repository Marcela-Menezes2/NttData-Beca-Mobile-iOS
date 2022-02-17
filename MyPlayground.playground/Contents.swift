//: A MapKit based Playground

import MapKit

import UIKit

var urlString = "https://api.themoviedb.org/3/trending/movie/week"
var apiKey = "api_key=770ea6139135f40466d2f52498a53b36"

let url = NSURL(string: "\(urlString)?\(apiKey)")

print(url?.path)

