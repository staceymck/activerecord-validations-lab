class TitleValidator < ActiveModel::Validator
  def validate(record)
    unless record.title && record.title.match?(Regexp.union("Won't Believe", "Secret", "Guess", /Top\s\d+/))
        record.errors[:title] << "Must be clickbait-y"
    end
  end
end