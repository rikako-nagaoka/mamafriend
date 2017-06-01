class MamasController < ApplicationController

  def index
    @mamas = Mama.order('created_at DESC').limit(5)
  end
end
