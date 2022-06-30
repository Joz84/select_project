class RankingsController < ApplicationController
  def update

    params[:ids].split(",").map(&:to_i).each_with_index do |id, index|
      Project.find(id).update(position: index)
      # byebug
    end

    respond_to do |format|
      format.text{render inline: params[:ids].to_s}
    end
  end
end
