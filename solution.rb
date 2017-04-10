require 'sinatra'

get "/" do
	@name = "desconocido"			
	<<-HTML
		<h1>Dime a quien tengo que saludar</h1>
		<form action="/" method="POST">
		<input type="text" name="name">
		<input type="submit" name="">
		</form>
	HTML
end

post "/" do
	@name = params[:name]
	erb :index
end
