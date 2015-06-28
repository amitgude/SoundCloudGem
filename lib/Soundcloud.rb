require "Soundcloud/version"
require "httparty"

module Soundcloud
  include HTTParty
  base_uri 'api.soundcloud.com'
  
  def self.tracks(username)
   user_id = find_user_id(username)
   tracks  = get("http://api.soundcloud.com/users/#{user_id}/tracks.json?client_id=b996850b65616c954995baf1721b3ac4")
  end

  def self.playlist(username,playlist_name)
   playlist_id = find_playlist_id(username,playlist_name)
   get("http://api.soundcloud.com/playlists/#{playlist_id}.json?client_id=b996850b65616c954995baf1721b3ac4")
  end

end

private

  def find_user_id(username)
  	 get("http://api.soundcloud.com/resolve.json?url=http://soundcloud.com/#{username}&client_id=b996850b65616c954995baf1721b3ac4").parsed_response["id"]
  end

  def find_playlist_id(username, playlist)
   get("http://api.soundcloud.com/resolve.json?url=http://soundcloud.com/#{username}/sets/#{playlist}&client_id=b996850b65616c954995baf1721b3ac4").parsed_response["id"]
  end
