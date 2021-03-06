class LessonplanAttachment < ActiveRecord::Base

  belongs_to :lessonplan
  has_many :comments, :as => :commentable, :order => 'updated_at DESC'

  mount_uploader :attachment, LessonplanAttachmentsUploader
end
