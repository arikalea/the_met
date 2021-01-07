class Museum
  attr_reader :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    recommendations = []
    @exhibits.each do |exhibit|
      patron.interests.each do |interest|
        if exhibit.name == interest
          recommendations << exhibit
        end
      end
    end
    recommendations
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    patrons_by_exhibit = {}
      @exhibits.each do |exhibit|
        patrons_by_exhibit[exhibit] = []
        interested_patrons = @patrons.find_all do |patron|
          patron.interests.include?(exhibit.name)
        end
        patrons_by_exhibit[exhibit] = interested_patrons
      end
      patrons_by_exhibit
  end
end
