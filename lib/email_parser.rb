require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

   def parse
     split_emails = emails.split(" ")

     unique_emails = split_emails.map do |e|
       e.gsub(",", "")
     end
     unique_emails.uniq
   end
end
