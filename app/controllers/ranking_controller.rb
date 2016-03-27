class RankingController < ApplicationController
  
  def have
    @rankings = Have.group(:item_id).order('count_id desc').limit(10).count(:id)
    @ranking_item = Item.all
    @type = "Have"
  end

  def want
    @rankings = Want.group(:item_id).order('count_id desc').limit(10).count(:id)
    @ranking_item = Item.all
    @type = "Want"
  end

end