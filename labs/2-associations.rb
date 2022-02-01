# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-associations.rb

# 1. write code to display each contact (you can reuse the previous lab's code) and include the contact's company name, e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com - Amazon.com, Inc.
# Craig Federighi - craig@apple.com - Apple Inc.
# Elon Musk - elon@tesla.com - Tesla, Inc.
# Tim Cook - tim@apple.com - Apple Inc.

puts "There are now #{Contact.all.count} contacts."

apple = Company.where({ name: "Apple, Inc."})[0]
puts "Contacts at Apple, Inc."
for contact in apple.contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.company.name}"
end

tesla = Company.where({ name: "Tesla, Inc."})[0]
puts "Contacts at Tesla, Inc."
for contact in tesla.contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.company.name}"
end


# 2. similar to above, but this time organized by company, write code to display each company (name) and its contacts, e.g.:

# ---------------------------------
# Apple Inc.
# Tim Cook - tim@apple.com
# Craig Federighi - craig@apple.com
#
# Amazon.com, Inc.
# Andy Jassy - andy@amazon.com
#
# Tesla, Inc.
# Elon Musk - elon@tesla.com
