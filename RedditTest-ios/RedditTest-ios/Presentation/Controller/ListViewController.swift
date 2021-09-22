//
//  ViewController.swift
//  RedditTest-ios
//
//  Created by Stefan V. de Moraes on 19/09/21.
//

import UIKit

class ListViewController: BaseViewController {

    @IBOutlet private(set) weak var listTitleLabel: UILabel?
    
    @IBOutlet private(set) weak var paginableTableView: PaginableTableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func setupTableView(){
        paginableTableView?.paginableDataSource = self
        paginableTableView?.paginableDelegate = self
        paginableTableView?.allowsSelection = false
        paginableTableView?.alwaysBounceVertical = true
        paginableTableView?.autoresizingMask = UIView.AutoresizingMask.flexibleHeight
        paginableTableView?.backgroundColor = .clear
        paginableTableView?.separatorStyle = .singleLine
        paginableTableView?.tintColor = .redditGray
        paginableTableView?.enablePullToRefresh = true
        paginableTableView?.loadData(refresh: true)
        paginableTableView?.tableFooterView = UIView()
//            self.currentPage = repoTableView?.currentPage ?? 0
            
        }


}

extension ListViewController: PaginableTableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Int.zero
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: AppIdentifiers.redditListTableViewCell, for: indexPath) as? RedditListTableViewCell {
            cell.tag = indexPath.row
            
            cell.thumbnailView?.image = UIImage(named: AppIdentifiers.defaultThumbnail)
            
//            if let imageUrl = self.repoList?.repositories[index].owner?.avatarUrl {
//                cell.photo.imageFromURL(imageUrl)
//                cell.photo.setRoundedCorners()
//            }
//            
//            let nameText =  self.repoList?.repositories[index].name
//            cell.repoNameLabel.text = nameText
//            
//            if let authorText = self.repoList?.repositories[index].owner?.login {
//                cell.authorNameLabel.text =  Project.Localizable.Repo.author.localized + authorText
//                
//                cell.accessibilityLabel = Project.Localizable.Accessiblity.repository.localized + (nameText ?? String()) +  Project.Localizable.Repo.author.localized + authorText
//            }
//            
//            if let starText = self.repoList?.repositories[index].starCount?.description {
//                cell.starsLabel.text =  Project.Localizable.Repo.stars.localized + starText
//                
//                cell.accessibilityValue = Project.Localizable.Accessiblity.stars.localized + starText
//            }
            
        
            return cell
        }
        
        return UITableViewCell()
    }
    
}

extension ListViewController: PaginableTableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let heightForRow: CGFloat = 72.0
        
        return heightForRow
    }
    
    func loadMore(_ pageNumber: Int, _ pageSize: Int, onSuccess: ((Bool) -> Void)?, onError: ((Error) -> Void)?) {
   
    }
}
