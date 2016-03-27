class RankingController < ApplicationController
  
  def have
    @rankings = Have.group(:item_id).order('count_id desc').limit(10).count(:id)
    @rankings.transform_keys! { |k| Item.find(k) } 
    @type = "Have"
  end

  def want
    @rankings = Want.group(:item_id).order('count_id desc').limit(10).count(:id)
    @rankings.transform_keys! { |k| Item.find(k) } 
    @type = "Want"
  end

end