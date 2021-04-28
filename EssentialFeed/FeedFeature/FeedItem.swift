//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Johan Sandström on 2021-04-12.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
