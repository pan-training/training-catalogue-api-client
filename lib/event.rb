class Event
  attr_accessor :external_id, :title,:subtitle,:url,:provider,:field,:description,:keywords,:category,
      :start,:end,:sponsor,:venue,:city,:county, :country,:postcode,:latitude,:longitude,:id, 
      :content_provider_id

  def initialize(id=nil, content_provider_id=nil, external_id=nil,title=nil,subtitle=nil,url=nil,provider=nil,
                 field=nil, description=nil,keywords=nil,category=nil,start_date=nil,end_date=nil,sponsor=nil,
                 venue=nil,city=nil,county=nil,country=nil,postcode=nil,latitude=nil,longitude=nil)

    @id = id
    @content_provider_id = content_provider_id
    @external_id = external_id
    @title = title
    @subtitle = subtitle
    @url = url
    @provider = provider
    @field = field
    @description = description
    @keywords = keywords
    @category = category
    @start = start_date
    @end = end_date
    @sponsor = sponsor
    @venue = venue
    @city = city
    @county = county
    @country = country
    @postcode = postcode
    @latitude = latitude
    @longitude = longitude
  end


  def dump
    hash = {}
    self.instance_variables.each do |var|
      varname = var.to_s.gsub(/@/,'')
      hash[varname] = self.instance_variable_get var
    end
    return hash
  end

  def to_json
    return self.dump.to_json
  end

  def [](var)
    return self.send(var)
  end

end

