class PagesController < ApplicationController
  def demo
puts "ZT: params="+params.inspect
  end

  def home
  end

  def review
    @clusters  = Cluster.all
    @positions = Position.all.pluck(:title)
    @matrix    = Hash.new

    @clusters.each do |cluster|
      @matrix[cluster.name] = {}
      competency_names = Competency.where(cluster_id: cluster.id).pluck('DISTINCT name')
      competency_names.each do |competency_name|
        @matrix[cluster.name][competency_name] = []
        competencies = Competency.where(name: competency_name)
        competencies.each do |competency|
          @matrix[cluster.name][competency.name][competency.position.id] = competency.position.name
        end
      end
#       puts "ZT: matrix = "+@matrix[cluster.name].inspect
#       puts "ZT: matrix = "+@matrix[cluster.name].count.to_s
    end
  end
end
