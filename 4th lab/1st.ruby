class Stanok
    attr_accessor  :country, :year, :mark

    def initialize(country, year, mark)
        @country = country
        @year = year
        @mark = mark
    end

     
end

Stanok1 = Stanok.new("Germany", 2014, "MNG14FS")
Stanok2 = Stanok.new("Turkey", 2016, "FTP28QN")
Stanok3 = Stanok.new("Russia", 2012, "PTC09YV")


puts Raz.country