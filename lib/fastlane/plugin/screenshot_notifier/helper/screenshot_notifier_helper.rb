require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")
  module Helper
    def self.authenticate(gcloud_key_file)
      UI.message "Authenticate with GCP"
      Action.sh("gcloud auth activate-service-account --key-file #{gcloud_key_file}")
    end

    def self.get_current_commit_hash
      Action.sh("git rev-parse HEAD").chomp!
    end

    def self.firebase_object_url(bucket, path)
      "https://firebasestorage.googleapis.com/v0/b/#{bucket}/o/#{CGI.escape(path)}?alt=media"
    end

    def self.calc_aspect_ratio(imagePath)
      width, height = FastImage.size(imagePath)
      UI.message "Image(#{imagePath}) size #{width} * #{height}"
      height / width.to_f
    end
  end
end
