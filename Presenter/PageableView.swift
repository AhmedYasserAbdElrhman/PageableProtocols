//
//  PageableView.swift
//  
//
//  Created by Ahmed Yasser on 31/08/2021.
//

import UIKit
protocol PageableView: UIScrollViewDelegate where Self: UIViewController {
    var scroll: UIScrollView {get}
    var isBottom: Bool {get}
    var PageablePresenter: PageablePresenter {get}
    func didEndScrolling()
}

extension PageableView {
    var isBottom: Bool {
      return (scroll.contentOffset.y + scroll.frame.height) >= scroll.contentSize.height
    }
        
    
    func didEndScrolling() {
        guard isBottom && !PageablePresenter.isFetching && PageablePresenter.lastPage > PageablePresenter.currentPage else {return}
        PageablePresenter.paginate()
    }

}

