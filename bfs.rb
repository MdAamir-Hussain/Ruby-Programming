require 'set'

class Graph
  def initialize
    @adj_list = {}
  end

  def add_edge(u, v)
    @adj_list[u] ||= []
    @adj_list[u] << v
  end

  def bfs(start_node)
    visited = Set.new
    queue = [start_node]

    while !queue.empty?
      node = queue.shift
      unless visited.include?(node)
        print "#{node} "
        visited.add(node)
        @adj_list[node]&.each { |neighbor| queue.push(neighbor) }
      end
    end
    puts
  end
end

# Driver code
graph = Graph.new
graph.add_edge(0, 1)
graph.add_edge(0, 2)
graph.add_edge(1, 2)
graph.add_edge(2, 0)
graph.add_edge(2, 3)
graph.add_edge(3, 3)

puts "Breadth-First Search:"
graph.bfs(2) # Output: 2 0 3 1
