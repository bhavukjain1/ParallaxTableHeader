//
//  ScrollToZoomImageViewController.swift
//  ScrollToZoomImagesTableView
//
//  Created by Bhavuk Jain on 01/04/17.
//  Copyright © 2017 Bhavuk Jain. All rights reserved.
//

import UIKit

class ScrollToZoomImageViewController: UIViewController {
    
    
    var scrollImageHeight:CGFloat = 0.0
    var scrollTableView:UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        for view in self.view.subviews {
            if view.isKind(of: UITableView.self) {
                scrollTableView = view as? UITableView
                if let headerView = scrollTableView?.tableHeaderView {
                    self.scrollImageHeight = headerView.bounds.height
                }
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateHeaderView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ScrollToZoomImageViewController: UITableViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        updateHeaderView()
        
    }
    
    fileprivate func updateHeaderView() {
        
        if let tableView = scrollTableView {
            var headerRect = tableView.tableHeaderView?.subviews.first?.frame
            if let image = tableView.tableHeaderView?.subviews.first as? UIImageView {
                image.contentMode = .scaleAspectFill
            }
            if tableView.contentOffset.y < 0 {
                headerRect?.origin.y = tableView.contentOffset.y
                headerRect?.size.height = -tableView.contentOffset.y + scrollImageHeight
            }
            
            tableView.tableHeaderView?.subviews.first!.frame = headerRect!
        }
    }
    
}
