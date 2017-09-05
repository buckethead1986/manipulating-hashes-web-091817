def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
contacts.each do |person, data| #first level
  if person == "Freddy Mercury" #only the freddy hash
    data.each do |attribute, value| #iterate through second level
      if attribute == :favorite_icecream_flavors  #check for correct attribute
        value.delete_if {|flavor| flavor == "strawberry"} #delete from array if it satisfies blok conditions.
      end
    end
  end
end

  #remember to return your newly altered contacts hash!
  contacts
end
