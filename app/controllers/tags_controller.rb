class TagsController < ApplicationController
include TagsHelper

  def index
   @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  #before_action :require_login, only: [:destroy]

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    flash.notice = "Tag Deleted!"    

    redirect_to action: 'index'
  end

end
