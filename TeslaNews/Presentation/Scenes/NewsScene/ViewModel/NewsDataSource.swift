//
//  NewsDataSource.swift
//  TeslaNews
//
//  Created by Admin on 08.06.2021.
//

import UIKit

class NewsDataSource: NSObject {
    
    // MARK: - Properties
    private var tableView: UITableView!
    private var viewModel: NewsViewModelProtocol!
    private var newsList = [NewsModel?]()
    
    // MARK: - Inits
    init(with tableView: UITableView, viewModel: NewsViewModelProtocol) {
        super.init()
        
        self.tableView = tableView
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.viewModel = viewModel
    }
    
    // Refresh Table View With Data
    func refresh(with option: Bool) {
        viewModel.getNewsList { news in
            self.newsList = news.articles
            self.tableView.reloadData()
        }
    }
}


// MARK: - Table View Data Source & Delegate
extension NewsDataSource: UITableViewDataSource, UITableViewDelegate  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return .init()
    }
}


