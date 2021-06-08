//
//  ViewController.swift
//  TeslaNews
//
//  Created by Admin on 08.06.2021.
//

import UIKit

class NewsViewController: UIViewController {
    
    // MARK: - Properties
    private var viewModel: NewsViewModelProtocol!
    private var dataSource: NewsDataSource!
    private var newsManager: NewsManagerProtocol!

    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(class: NewsCell.self)
        configureViewModel()
        dataSource.refresh()
    }
    
    // MARK: - Configure View Model
    private func configureViewModel() {
        newsManager = NewsManager()
        viewModel = NewsViewModel(with: newsManager)
        dataSource = NewsDataSource(with: tableView, viewModel: viewModel)
    }
    
}

