class DatashowController < ApplicationController
  layout 'datashow'
  def behavior
    @position   = Position.find_by_name(params['position_name'])
    @competency = Competency.find_by_name(params['competency_name'])
    @cluster    = Cluster.find @competency.cluster_id
    @levels     = Level.all
    @behaviors  = Hash.new
    @levels.each do |level|
      @behaviors[level.name] = Behavior.where(competency_id: @competency.id, level_id: level.id)
    end
    puts "ZT: @behaviors="+@behaviors.inspect
  end
end
