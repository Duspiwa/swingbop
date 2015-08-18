class Post < ActiveRecord::Base
	has_attached_file :image, styles: {large:"600x600", medium: "300x300>", thumb:"100x100>" }, :default_url => "/images/:style/missing.png":storage => :s3,
     :bucket => '*****', :s3_credentials => S3_CREDENTIALS
  	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)
 
	
end
