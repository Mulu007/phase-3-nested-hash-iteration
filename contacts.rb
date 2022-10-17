require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddie Mercury" => {
      name: "Freddie",
      email: "freddie@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts)
  # Step 1: Iterate over the first level
  contacts.each do |person, contact_details_hash|
    # Step 2. Iterate over the second level
    if person == "Freddy Mercury"
      contact_details_hash.each do |attribute, data|
        # Step 3. Locate the element we're looking for
        if attribute == :favorite_ice_cream_flavors
          # Step 4. Update the hash
          data.delete_if {|ice_cream| ice_cream == "strawberry"}
        end
      end
    end
  end
end

# print the output to the terminal for inspection
pp remove_strawberry(contacts)
