//
//  ViewController.swift
//  
//
//  Created by Ahmed Yasser on 31/08/2021.
//

import UIKit

// MARK:- ExapmleViewController

protocol ViewProtocol: NSObjectProtocol {
    
}

class ViewController: UIViewController {

    // MARK:- IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK:- Variables
    var presenter: ViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
}


extension ViewController: PageableView {
    var scroll: UIScrollView {
        return  tableView
    }
    
    
    var PageablePresenter: PageablePresenter {
        return presenter
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        didEndScrolling()
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        didEndScrolling()
    }
    

}
