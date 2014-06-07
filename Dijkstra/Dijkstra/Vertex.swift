//
//  Vertex.swift
//  Dijkstra
//
//  Created by Julien Gomès on 07/06/2014.
//  Copyright (c) 2014 Prunelle.io All rights reserved.
//

import Foundation

struct Vertex: Hashable {
    /**
    * ID of the vertex
    */
    var vertexId: Int
    /**
    * A human comprehensible representation of the vertex
    */
    var name: String
    /**
    * The parameter needed by the Hashable protocol
    */
    var hashValue:Int
    
    init(vertexIdParam: Int, nameParam:String) {
        self.vertexId = vertexIdParam
        self.name = nameParam
        self.hashValue = self.vertexId
    }
}

func == (vertexA: Vertex, vertexB: Vertex) -> Bool {
    return vertexA.hashValue == vertexB.hashValue
}