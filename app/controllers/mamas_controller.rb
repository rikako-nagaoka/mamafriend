class MamasController < ApplicationController

  def index
    @mamas = Mama.order('created_at DESC')
  end
end
