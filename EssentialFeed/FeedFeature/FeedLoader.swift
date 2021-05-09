//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Johan Sandström on 2021-04-12.
//

import Foundation

//public typealias LoadFeedResult = Result<[FeedItem], Error>
public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}
