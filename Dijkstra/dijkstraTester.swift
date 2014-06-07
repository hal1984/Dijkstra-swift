//
//  dijkstraTester.swift
//  Dijkstra
//
//  Created by Julien Gomès on 07/06/2014.
//  Copyright (c) 2014 Prunelle.io All rights reserved.
//

import Foundation

func testDijkstra() {
    var vertexA: Vertex = Vertex(vertexIdParam: 1,nameParam: "Vertex A")
    var vertexB: Vertex = Vertex(vertexIdParam: 2,nameParam: "Vertex B")
    var vertexC: Vertex = Vertex(vertexIdParam: 3,nameParam: "Vertex C")
    var vertexD: Vertex = Vertex(vertexIdParam: 4,nameParam: "Vertex D")
    var vertexE: Vertex = Vertex(vertexIdParam: 5,nameParam: "Vertex E")
    
    var edgeAB: Edge = Edge(sourceParam: vertexA, destinationParam: vertexB, distanceParam: [1])
    var edgeBC: Edge = Edge(sourceParam: vertexB, destinationParam: vertexC, distanceParam: [3])
    var edgeCE: Edge = Edge(sourceParam: vertexC, destinationParam: vertexE, distanceParam: [1])
    var edgeAD: Edge = Edge(sourceParam: vertexA, destinationParam: vertexD, distanceParam: [3])
    var edgeDE: Edge = Edge(sourceParam: vertexD, destinationParam: vertexE, distanceParam: [1])
    
    var graph: Graph = Graph(vertexListParam: [vertexA,vertexB,vertexC,vertexD,vertexE],
        edgeListParam: [edgeAB,edgeBC,edgeCE,edgeAD,edgeDE])
    
    
    let startTime = getCurrentMillitime()
    let dijkstra: Dijkstra = Dijkstra(graphParam: graph)
    dijkstra.execute(vertexA)
    let endTime = getCurrentMillitime()
    
    
    println()
    println("* Path :")
    var path:Vertex[] = dijkstra.getPath(vertexE)!
    for step: Vertex in path {
        println(step.name)
    }
    let computationTime = endTime - startTime
    println(computationTime)
}

func getCurrentMillitime() -> NSTimeInterval {
    let date: NSDate = NSDate()
    return date.timeIntervalSince1970*1000;
}