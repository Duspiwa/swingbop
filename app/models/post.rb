class Post < ActiveRecord::Base
	has_attached_file :image, styles: {large:"600x600", medium: "300x300>", thumb:"100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)
 
	 has_attached_file :download,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  def s3_credentials
    {:bucket => "swingbop", :access_key_id => "AKIAJDDBCPNLS4DQY7IQ", :secret_access_key => "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"}
  end
end
