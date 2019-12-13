class Book < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: {
         message: "Le titre doit être renseigné."
  }

  validates :title, uniqueness:{
      message: "Un livre avec ce nom existe !"
  }
end
