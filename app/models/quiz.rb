class Quiz < ActiveRecord::Base
    belongs_to :user
    has_many :comments
    has_many :stars
     mount_uploader :img, ImageUploader
end
