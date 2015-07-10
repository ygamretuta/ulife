class Phnorthadmin
  include HTTParty
  base_uri 'phnorthadmin.herokuapp.com/api/v1'

  EXCEPTIONS = [HTTParty::Error, StandardError, SocketError]

  def initialize
    @options = {query:{
        api_key:ENV['PHNORTHADMIN_API_KEY'],
        username: ENV['PHNORTHADMIN_USERNAME'],
        format: 'json'
    }}
  end

  def members
    begin
      self.class.get('/member', @options)
    rescue *EXCEPTIONS
      false
    end
  end

  def events
    @options[:query][:center__name__iexact] = 'Northern Luzon'
    @options[:query][:limit] = 5
    self.class.get('/event', @options)
  end
end