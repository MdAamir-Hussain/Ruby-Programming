class Graph
    def initialize
      @adj_list = {}
    end
  
    def add_edge(u, v)
      @adj_list[u] ||= []
      @adj_list[u] << v
    end
  
    def dfs_util(node, visited)
      visited[node] = true
      print "#{node} "
  
      @adj_list[node]&.each do |neighbor|
        dfs_util(neighbor, visited) unless visited[neighbor]
      end
    end
  
    def dfs(start_node)
      visited = {}
      dfs_util(start_node, visited)
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
  
  puts "Depth-First Search:"
  graph.dfs(2) # Output: 2 0 1 3
  