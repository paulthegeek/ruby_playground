class Project < ActiveRecord::Base
  validates :name, presence: true

  def self.search(search)
    if search
      self.where('name LIKE ?', search)
      #self.where('name LIKE ?', "%search%")
    else
      self.all
    end
  end
end
