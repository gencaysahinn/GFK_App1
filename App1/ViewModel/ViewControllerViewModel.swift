//
//  ViewControllerViewModel.swift
//  App1
//
//  Created by Gencay Sahin on 9.02.2021.
//

import Foundation

class ViewControllerViewModel {
    private let secondAppPath = "app2:?data="
    private var url: URL?
    
    func getSecondAppUrl(message: String?) -> URL? {
        return URL(string: "\(secondAppPath)\(message ?? "")")
    }

}
