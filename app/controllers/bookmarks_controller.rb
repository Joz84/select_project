class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def create
    @project = Project.find(params[:project_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.user = current_user
    @bookmark.project = @project
    @bookmark.save
    redirect_to projects_path(anchor: "project-#{ @project.id }")

  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to projects_path(anchor: "project-#{ @bookmark.project.id }")
  end

  private

  def bookmark_params
    # params.require(:bookmark).permit()
    # {}
  end
end
