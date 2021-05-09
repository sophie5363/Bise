//
//  ProfileViewModel.swift
//  Bise
//
//  Created by Sophie Jacquot  on 09/05/2021.
//

import Foundation

enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel {
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
