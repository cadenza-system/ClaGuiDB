class Movie < ApplicationRecord

    def work
        return Work.find_by(id: self.WORKS_ID)
    end

    def workSub
        return WorksSub.find_by(WORKS_ID: self.WORKS_ID, SUB_NO: self.SUB_NO)
    end

    def composer
        return Musician.find_by(id: self.work.COMPOSER)
    end

    def arranger
        return Musician.find_by(id: self.ARRANGER)
    end
end
