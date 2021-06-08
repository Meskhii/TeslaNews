//
//  NewsManager.swift
//  TeslaNews
//
//  Created by Admin on 08.06.2021.
//

import Foundation

protocol NewsManagerProtocol: AnyObject {
    func fetchNews(completion: @escaping ((ArticleModel) -> Void))
}

class NewsManager: NewsManagerProtocol {
    
    func fetchNews(completion: @escaping ((ArticleModel) -> Void)) {
        let url = "https://newsapi.org/v2/everything?q=tesla&from=2021-05-08&sortBy=publishedAt&apiKey=ce67ca95a69542b484f81bebf9ad36d5"
        NetworkManager.shared.get(url: url) { (result: Result<ArticleModel, Error>) in
            switch result {
            case .success(let countries):
                completion(countries)
            case .failure(let error):
                print(error)
            }
        }
    }
}
