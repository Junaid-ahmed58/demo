class Person < ApplicationRecord
    #validates :name, :marks, :email, presence: true
    # validates :name, length {maximum: 10}
    #my_salary = 10
    # validates :salary, comparison: { greater_than: 10 } 
    #validates :salary, comparison: {less_than_or_equal_to: 50, message: "junaid" }
    #validates :salary, numericality: true
    validates :name, :email, uniqueness: true
    #validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
  has_many :articles, dependent: :destroy 

  before_create :greeting_message
  def greeting_message
     puts "Hey! I will run before you create an object!"
  end
   
  after_create :display_student_marks
  def display_student_marks
  if self.marks.present?
     puts "=======Marks of person is #{marks}========"
    else
     puts "=======Marks of person is not added======="
    end
  end


  after_initialize do |person|
     puts "You have initialized an object!"
  end

  after_find do |person|
     puts "You have found an object"
  end

  after_touch do |person|
     puts "You have touched an object"
  end

  after_create :display_email
  def display_email
     puts"======email@xprolabs.com========"
  end
end
