class Author < ActiveRecord::Base
  belongs_to :user
  
  validate :file_invalid?
  
  def data=(data)
      self.ctype = data.content_type
      self.photo = data.read
  end
  
  private
  def file_invalid?
    ps = ['image/jpeg','image/gif','image/png']
    errors.add(:photo,'は画像ファイルではありません。') if !ps.include?(self.ctype)
    errors.add(:photo,'のサイズが1MBを超えています') if self.photo.length > 1.megabyte
  end
end
