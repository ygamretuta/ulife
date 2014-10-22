class Phnorthadmin
  include HTTParty
  base_uri Rails.env.production? ? 'phnorthadmin.herokuapp.com/api/v1':'localhost:8000/api/v1'

  def initialize
    @options = {query:{
        api_key:ENV['PHNORTHADMIN_API_KEY'],
        username: ENV['PHNORTHADMIN_USERNAME'],
        format: 'json'
    }}
  end

  def members
    self.class.get('/member', @options)
  end

  def events
    @options[:query][:center__name__iexact] = 'Northern Luzon'
    @options[:query][:limit] = 5
    self.class.get('/event', @options)
  end
end