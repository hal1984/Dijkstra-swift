//
//  dijkstraTester.swift
//  Dijkstra
//
//  Created by Julien Gomès on 07/06/2014.
//  Copyright (c) 2014 Prunelle.io All rights reserved.
//

import Foundation

var currentIndex: Int = 1;

func testDijkstra() {
    
    var root: Vertex = Vertex(vertexIdParam: 1,nameParam: "Vertex 1")
    var graph: Graph = Graph()
    createGraph(graph, root, 2)

    let startTime = getCurrentMillitime()
    let dijkstra: Dijkstra = Dijkstra(graphParam: graph)
    dijkstra.execute(root)
    let endTime = getCurrentMillitime()
    
    
    println()
    println("* Path : ")
    var path:[Vertex] = dijkstra.getPath(graph.vertexList[graph.vertexList.endIndex-1])!
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

func createGraph(graph: Graph,root: Vertex, level: Int) {
    if (level == 0) {
        return
    } else {
        let firstChildId: Int = ++currentIndex;
        let secondeChildId: Int = ++currentIndex;
        let firstChild: Vertex = Vertex(vertexIdParam: firstChildId,nameParam: "Vertex \(firstChildId)")
        let secondChild: Vertex = Vertex(vertexIdParam: secondeChildId,nameParam: "Vertex \(secondeChildId)")
        
        let edgeRootFirstChild: Edge = Edge(sourceParam: root, destinationParam: firstChild, distancesParam: [1])
        let edgeRootSecondChild: Edge = Edge(sourceParam: root, destinationParam: secondChild, distancesParam: [1])

        graph.vertexList.append(firstChild)
        graph.vertexList.append(secondChild)
        graph.edgeList.append(edgeRootFirstChild)
        graph.edgeList.append(edgeRootSecondChild)
        
        createGraph(graph, firstChild, level-1)
        createGraph(graph, secondChild, level-1)
    }
}