class RubyParsing
    # Parsing is how you read a text based file and put it in memory in Ruby
    # There are three common data formats to store information
  
    # data file      |     Ruby object (memory)
    # CSV            |     Array
    # XML            |     Nokogiri::XML
    # JSON           |     Hash
  
    # Soring means that you revert the process
    # the data is stored from the in memory object to the file
    # this way, you dont lose data when you close the program
  
    # ----------------------------------------------------------------------------
    # CSV - Comma Separated Values
    # ----------------------------
    # What:
    # - strings separated by commas
    # - line one can be specified as a header (optional)
    # - human readable plain text
    # - one record per row
  
    # Problem:
    # - there are no standards in place
    # - delimeters arent always commas
    # - fields arent always quoted ('strings')
  
    # Parsing:
  
    require 'csv' # package that comes with Ruby standard library
  
    filepath = 'beers.csv'
    csv_options = { col_sep: ',', quote_char: '"', header: :first_row }
  
    CSV.foreach(filepath, csv_options) do |row|
      # headers allow using ['name'] instead of [0]
      puts "#{row['name']}"
    end
  
    # Storing:
  
    require 'csv'
  
    filepath = 'beers.csv'
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
  
    # wb mode = w writes only - overrides the file / b binary
    CSV.open(filepath, 'wb', csv_options) do |csv|
      # headers allow using ['name'] instead of [0]
      csv << ['name', 'appearance', 'origin']
    end
  
    # ----------------------------------------------------------------------------
    # XML - Extensible Markup Language
    # --------------------------------
    # What:
    # - human readable
    # - xml declaration line
    # - focus on a document containing elements and nested sub-documents (hierarchy)
    # - elements / nodes composed of a tag and content
    # - several schemas systems on top of xml
    # - mored standardised than csv
    # - in the 90s was used as returned format for APIs
  
    # Problem:
    # - verbus & file size depending on amount of data
  
    # Parsing:
  
    require 'nokogiri' # nokogiri gem
  
    file = File.open('beers.xml')
    document = Nokogiri::XML(file)
  
    document.root.xpath('beer').each do |beer|
      name = beer.spath('name').text
      puts name
    end
  
    # Storing:
  
    require 'nokogiri' # nokogiri gem
  
    filepath = 'beers.xml'
    builder = Nokogiri::XML::Builder.new(enconding: 'UTF-8') do
      beers do
        beer do
          name 'Endelweiss'
        end
      end
    end
  
    File.open(filepath, 'wb') { |file| file.write(builder.to_xml) }
  
    # ----------------------------------------------------------------------------
    # JSON - JavaScript Object Notation
    # ---------------------------------
    # What:
    # - now a days, the most commun format returned with APIs / web services
    # - human readable text
    # - format derived from JS but completely indenpendent
    # - key-value pair data
    # - looks like Ruby hashes (starts either with {} or [])
    # - holds most data types
    # - less verbose than xml
  
    # Parsing:
  
    require 'json'
  
    filepath = 'beers.json'
    serialized_beers = File.read(filepath)
    JSON.parse(serialized_beers)
  
    # Storing:
  
    require 'json'
  
    beers = { beers: [
      {
        name: 'Endelweiss',
        appearance: 'white'
      }
    ] }
  
    File.open(filepath, 'wb') do |file|
      file.write(JSON.generate(beers))
    end
  
    # JSON API:
  
    require 'json'
    require 'open-uri'
  
    url = 'http://api.github.com/users/ssaunier'
    user_serialized = open(url).read
    user = JSON.parse(user_serialized)
  
    p "#{user['name']} - #{user['bio']}"
  
    # ----------------------------------------------------------------------------
    # Scraping
    # --------
  
    # Scraping an HTML file directly (instead of an API)
    # Inspect the HTML file to select the right css to use
    # Define / identify the css selector (element, id or class)
  
    require 'open-uri'
    require 'nokogiri'
  
    url = 'http://...'
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
  
    html_doc.search('.standard-card-new').each do |element|
      puts element.text.strip
      puts element.attribute('href').value
    end
  end
  