class PrototypesController < ApplicationController

  before_action :move_to_index, except: [:index, :show]
  before_action :set_prototype, only: [:edit, :show]


  def index
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
