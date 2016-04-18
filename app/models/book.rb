class Book < ActiveRecord::Base

    
    def self.search(search)
        if search
            Book.where(['title LIKE ?', "%#{search}%"])
        else
            Book.all
        end
    end
    
#    def total_price
        #更新されたら金額計算
#        Book.sum(:price)
#    end
end
