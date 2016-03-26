class RankingController < ApplicationController
  
  def have
    @rankings = Have.group(:item_id).order('item_id desc').limit(10).count(:id)
    @type = "Have"
  end

  def want
    @rankings = Want.group(:item_id).order('item_id desc').limit(10).count(:id)
    @type = "Want"
  end

end