//
//  NewsViewModel.swift
//  TeslaNews
//
//  Created by Admin on 08.06.2021.
//

import UIKit

protocol NewsViewModelProtocol: AnyObject {
    func getNewsList(completion: @escaping ((ArticleModel) -> Void))
    
    init(with countriesManager: NewsManagerProtocol)
}

class NewsViewModel: NewsViewModelProtocol {
    
    // MARK: - Properties
    private var newsManager: NewsManagerProtocol!

    // MARK: - Inits
    required init(with newsManager: NewsManagerProtocol)  {
        self.newsManager = newsManager
    }
    
    // MARK: - Data Fetcher
    func getNewsList(completion: @escaping ((ArticleModel) -> Void)) {
        newsManager.fetchNews { news in
            DispatchQueue.main.async {
                completion(news)
            }
        }
    }
}

