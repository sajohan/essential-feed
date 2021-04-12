//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Johan Sandström on 2021-04-12.
//

import Foundation

typealias LoadFeedResult = Result<[FeedItem], Error>

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
