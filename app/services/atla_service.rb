class ATLAService

   def self.get_character_by_nation(nation)
        response = conn.get("/api/v1/characters?affiliation=#{nation}")
   end

   def self.conn
        Faraday.new(url: 'https://last-airbender-api.fly.dev')
   end 
end