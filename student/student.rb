class Student

  # attr_accessor :name, :cohort
  # This would be shorthand

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  #getter
  def name
    @name
  end

  #getter
  def cohort
    @cohort
  end

  #setter
  def set_name(name)
    @name = name
  end

  #setter
  def set_cohort(cohort)
    @cohort = cohort
  end

  #new method
  def speech(speech_words)
    p speech_words
  end


  def fav_language(language)
    p "My fav language is #{language}!"
  end

end
