//
//  PostsViewModel.swift
//  ProtocolsTutorial
//
//  Created by Mariano Martin Battaglia on 30/01/2023.
//

import Foundation

class PostsViewModel {
    private var provider : PostsProviderProtocol
    
    init(provider : PostsProviderProtocol = PostsProvider()) {
        self.provider = provider
        //self.provider = PostsProviderMock()
    }
    
    func getUserFromProvider(_ completion: @escaping ([PostModel]) -> Void){
        provider.getPosts { response in
            switch response{
            case .success((let model, _)):
                completion(model)
            case .failure(let error):
                print("error: ", error.localizedDescription)
            }
        }
    }
}
