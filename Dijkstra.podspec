Pod::Spec.new do |s|
  s.name         = "Dijkstra"
  s.version      = "0.0.1"
  s.summary      = "A swift based implementation of the Dijkstra algorithm"
  s.homepage     = "https://github.com/juliengomes/Dijkstra-swift"
  s.license      = 'Apache 2.0'
  s.author       = { "juliengomes" => "julien.gomes@gmail.com" }
  s.source       = { :git => "https://github.com/juliengomes/Dijkstra-swift.git", :tag => "#{s.version}" }
  s.platform     = :ios, '6.1'
  s.source_files = 'Dijkstra/Dijkstra/*.swift'
  s.frameworks   = 'Foundation'
  s.requires_arc = true
end
