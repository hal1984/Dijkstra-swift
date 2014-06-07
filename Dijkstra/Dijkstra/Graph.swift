//
//  Graph.swift
//  Dijkstra
//
//  Created by Julien Gomès on 07/06/2014.
//  Copyright (c) 2014 Prunelle.io All rights reserved.
//

import Foundation

struct Graph {
    var vertexList: Vertex[]
    var edgeList: Edge[]
    
    init(vertexListParam:Vertex[],edgeListParam:Edge[]) {
        self.vertexList = vertexListParam
        self.edgeList = edgeListParam
    }
}
