# Dijkstra

A swift based implementation of the Dijkstra algorithm

## Purpose

The goal of this implementation is first for me to have a hand on the swift language, but also I wanted to compare the perfomances with an Objective C implementation.

### Algorithm presentation

It's the basic Dijkstra algorithm as you can check on [Wikipedia](http://en.wikipedia.org/wiki/Dijkstra's_algorithm). The only change I have made is that edges can have multiple weight (for exemple in a road, first might be the state of the road (good,bad etc..) and another one the actual distance).
You can contact me if you have question about it.

### Data input

I generate a binary tree created by the method `func createGraph(graph: Graph,root: Vertex, level: Int)`. The level represent the number of level of the tree.
As a result, the algorithm will always find the way throught the entire tree, it's the worst case scenario.

### Comparison with ObjC

The results are quite deceiving, as Apple mention that swift will be like 2.8x faster that ObjC. You can find the exact same implementation of the algorithm, with the same change on the weight of the edges, [here](https://github.com/juliengomes/Dijkstra-Objc)

Here are the results :

| Level        | Objective C impl           | Swift Impl  |
| ------------- |:-------------:| -----:|
| 2 (8 nodes)      | 0.1ms | 3ms |
| 5 (64 nodes)     | 3ms      |   70ms |
| 10 (2048 nodes) | 1950ms      |    55000ms |
| 12 (8192 nodes) | 30000ms      |    ... |

The test are being runed in the simulator, so it might not be very exact even if I run them multiple times, it's not a very scientific proof, but as the result are quite different, we can say without too much risk that the swift implementation take much longer to execute.

As it's a new feature, I hope in the future release of xCode they will improve perfomance, but for the moment I'm a bit disappointed...

### Roadmap

* Add test in the code, for instance if all the edges doesn't have the same distances dimension, it will crash
* Adding unit test

### Tools/Versions

Run on iOS6+ with ARC. Developed under Xcode 4.6.2. Not tested on other versions.

### Licence

[Apache licence 2.0](http://www.tldrlegal.com/license/apache-license-2.0-(apache-2.0)

Please send me an email if you use this (julien.gomes@gmail.com)