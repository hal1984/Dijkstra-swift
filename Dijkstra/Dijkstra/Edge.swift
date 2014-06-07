//
//  Edge.swift
//  Dijkstra
//
//  Created by Julien Gomès on 07/06/2014.
//  Copyright (c) 2014 Prunelle.io All rights reserved.
//

import Foundation

struct Edge {
    var source: Vertex
    var destination: Vertex
    var distances: Int[]
    
    init(sourceParam: Vertex, destinationParam: Vertex, distancesParam: Int[]) {
        self.source = sourceParam
        self.destination = destinationParam
        self.distances = distancesParam
    }
}