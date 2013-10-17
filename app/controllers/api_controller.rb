class ApiController < ApplicationController
	def announcements
		begin
			tokens = params[:tokens].split(',')
			people = Person.where(token: tokens)
			groups = []
			anns = []

			people.each { |p| groups << p.group.id }

			Announcement.where(group_id: groups).each {|a| anns << {group_name: a.group.title, content: a.content} }

			render json: anns
		rescue Exception => e  
			render :json => { error: e }
		end
	end

	def groups


		begin
			tokens = params[:tokens].split(',')
			people = Person.where(token: tokens)
			groups = []

			people.each { |p| groups << {id: p.group.id, title: p.group.title } }

			render json: groups
		rescue Exception => e  
			render :json => { error: e }
		end
	end

	def group
		group_id = params[:id]

		begin
			# people = Person.where(token: tokens)
			people = []

			Group.find(group_id).people.each { |p| people << {id: p.id, first_name: p.first_name, last_name: p.last_name } }

			render json: people
		rescue Exception => e  
			render :json => { error: e }
		end

	end
end
