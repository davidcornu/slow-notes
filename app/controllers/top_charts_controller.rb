class TopChartsController < ApplicationController
  def index
    @users_with_scores = User.all
      .map do |user|
        [
          user,
          user.comments.count + user.todos.count
        ]
      end
      .sort_by { |(_, score)| -score }
  end
end
