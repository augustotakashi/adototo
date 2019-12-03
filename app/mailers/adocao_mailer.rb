class AdocaoMailer < ApplicationMailer
	default from:"me@usp.br"

	def adocao_email(pet,user)
		@pet = pet
		@user = user
			mail(:to=> @user.email ,
			:subject => "Um usuário está interessado em adotar o seu Pet")
	end
end
