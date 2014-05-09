require 'sinatra/base'

module Sinatra
  module Bookmark_Helper

      def no_bookmarks
        return "currently no bookmarks" if Link.count == 0
      end

      def current_user
        @current_user ||= User.get(session[:user_id]) if session[:user_id]
      end
  end

  helpers Bookmark_Helper
end


