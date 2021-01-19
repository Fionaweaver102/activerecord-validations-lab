class MyValidator < ActiveModel::Validator 
  def validate(record)
    if record.title 
      reqs = ["Won't Believe", "Secrect", "Top[number]", "Guess"]
      if reqs.detect {|el| record.title.include?(el) }.nil?
      record.errors[:title] << "Must contail clickbait"
    end 
  end 
end 
end 