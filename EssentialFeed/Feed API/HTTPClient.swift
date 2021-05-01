//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Johan Sandström on 2021-05-01.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
