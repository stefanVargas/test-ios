//
//  APIProvider.swift
//  RedditTest-ios
//
//  Created by Stefan V. de Moraes on 21/09/21.
//

import Foundation

protocol APIProviderProtocol {
    func getEntryList(params: RedditRequest,
                      completion: @escaping ResponseCompletion)
    func getThumbImage(fromUrl: String, completion: @escaping DataCompletion)

}

class APIProvider: APIProviderProtocol {
    
    
    func getEntryList(params: RedditRequest, completion: @escaping ResponseCompletion) {
        let baseURL =  NetworkConstants.baseUrL
        let endpoint = "\(baseURL)"
        
        guard let request = APIRequest(requestMethod: .GET, urlString: endpoint) as URLRequest? else { return }
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard error == nil else {
                return completion(.failure(error: .invalidResponse))
            }
            
            guard let data = data else {
                return completion(.failure(error: .invalidData))
            }
            
            guard let stringResponse = String(data: data,
                                              encoding: String.Encoding.utf8)
            else {
                return completion(.failure(error: .invalidResponse))
            }
                        
            guard let responseResultData = try? JSONDecoder().decode(RedditResponse.self, from: data) else {
                return completion(.failure(error: .invalidResponse))
            }
            return completion(.success(data: responseResultData))
            
        }.resume()
    }
    
    func getThumbImage(fromUrl: String, completion: @escaping DataCompletion) {
        
    }
    
    
}
