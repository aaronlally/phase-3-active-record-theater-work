class Role < ActiveRecord::Base
has_many :auditions

    def actors
        auditions.map |audition|
        audition.actor
    end

    def locations
        auditions.map |audition|
        audition.location
    end

    def lead
        # if audition.hired == true
        # auditions.where("hired = ?", true).first
        # else "no actor has been hired for this role"
        # end
        array_result = auditions.filter do |audition|
            audition.hired == true 
        end
        if (array_result.aize != 0 && array_result.size > 0)
            array_result.first
        else
            "no actor has been hired for this role"
        end
    end

    def understudy
        array_result = auditions.filter do |audition|
            audition.hired == true 
        end
        if (array_result.aize != 0 && array_result.size > 0)
            array_result.first
        else
            "no actor has been hired for this role"
        end
    end

end