class Authentication < ApplicationRecord
    def access_token
        "AT#{@email}-#{Time.now.to_i}"
    end

    def refresh_token
        "RT#{@email}-#{Time.now.to_i}"
    end
end
