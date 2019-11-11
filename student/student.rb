class Student

  # attr_accessor :name, :cohort
  # This would be shorthand

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

  def name
    @name
  end

  def cohort
    @cohort
  end
  
  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

end
