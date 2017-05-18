class CleanPosts
    include Sidekiq::Worker
    include Sidekiq::Schedulable

    recurrence { monthly }

    def perform
        Post.recent.destroy_all
    end
end
