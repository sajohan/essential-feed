//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Johan Sandström on 2021-04-12.
//

import Foundation

//public typealias LoadFeedResult = Result<[FeedItem], Error>
public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
