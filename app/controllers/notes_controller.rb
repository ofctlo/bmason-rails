# This controller handles displaying notes that I am storing in the public
# folder. The way this is done is pretty jank, and there's probably a better
# way, but for now this will do. This action currently assumes that all notes
# files are .html.md.
class NotesController < ApplicationController
  def show
    @note = File.read("#{Rails.root}/public#{request.path}.html.md")
    render layout: false
  end
end
