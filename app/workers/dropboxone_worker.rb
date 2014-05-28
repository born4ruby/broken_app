class DropboxoneWorker
  include Sidekiq::Worker
  sidekiq_options :queue => :dropbox, :retry => false
  
  def perform su
    user = User.find(su)
    DropboxSync.sync_for_user(user)
  end
end