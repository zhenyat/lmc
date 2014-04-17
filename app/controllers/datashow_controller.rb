class DatashowController < ApplicationController
  layout 'datashow'
  def behavior
    @position   = Position.find_by_name(params['position_name'])
    @competency = Competency.find_by_name(params['competency_name'])
    @cluster    = Cluster.find @competency.cluster_id
  end
end
