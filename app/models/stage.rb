class Stage < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image, :styles => { :small => "150x150>" },
                  :url  => "/assets/stages/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/stages/:id/:style/:basename.:extension"
  do_not_validate_attachment_file_type :image
end
