class ApiController < ApplicationController
	def announcements
		tokens = params[:tokens]



		render text: 'afsskjlaf;ls' + tokens.inspect

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

			Group.find(group_id).people.each { |p| people << {id: p.id, title: p.name } }

			render json: people
		rescue Exception => e  
			render :json => { error: e }
		end

	end
end
