class Video


	attr_accessor :id, :title, :body, :link, :genre

	def self.open_connection
		PGconn.connect( dbname: "homeworkdatabase")
	end	

#index
	def self.all
		conn = self.open_connection
		sql = "SELECT * FROM Video;"
		results = conn.exec(sql)
		videos = results.map do |record|
			self.hydrate(record)
		end	
	end


	def self.hydrate video_data

		video = Video.new
		video.id = video_data['id']
		video.title = video_data['title']
		video.body = video_data['body']
		video.link = video_data['link']
		video.genre = video_data['genre']
		video
	end	

#show
	def self.find id
		conn = self.open_connection
		sql = "SELECT * FROM video WHERE id = #{id}"
		videos = conn.exec(sql)
		video = self.hydrate videos[0]
		video
	end	


#create and update called save

	def save
		conn = Video.open_connection
		if !self.id
			sql  = "INSERT INTO video (body,title,link,genre) VALUES ('#{self.body}', '#{self.title}', '#{self.link}', '#{self.genre}')"
		else
			sql = "UPDATE video SET title = '#{self.title}',body='#{self.body}', link='#{self.link}', genre='#{self.genre}' WHERE id = #{self.id}"
		end
		conn.exec(sql)


	end	


#delete
	
	def self.destroy id
		conn = self.open_connection
		sql = "DELETE FROM video WHERE id = #{id}"
		conn.exec(sql)
	end
end	