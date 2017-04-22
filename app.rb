require 'sinatra'

get '/' do
	name = params[:name]
	if name!=nil
		return "Hello #{name}!"
	else 
		return "No parameter!"
	end
end

get '/Fibo' do
	n = params[:n]
	if n!=nil
		i = n.to_i
		num = Fib(i)
		return "Value = #{num}"
	else
		return "No parameters given!"
	end
		
end
def Fib(n)
	i=2
	a=0
	b=1
	while i<n
		c = a + b
		a = b
		b = c
		i = i + 1
	end
	return c 
end

