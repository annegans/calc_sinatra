require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'

get '/' do
  erb :home
end

get '/basic' do 
  @operator = params[:operator]
  if  @operator
  @first = params[:first].to_f
  @second = params[:second].to_f

    @result = case @operator
    when '+' then @first + @second
    when '-' then @first - @second
    when '*' then @first * @second
    when '/' then @first / @second
    end
  end
  erb :basic
end

get '/power' do 
  @pfirst = params[:pfirst].to_f
  if @pfirst > 0.0
    @psecond = params[:psecond].to_f
    @presult = @pfirst**@psecond
  end
  erb :power
  end
 
 get '/sr' do
   @sfirst = params[:sfirst].to_f
  if @sfirst > 0.0
    @sresult = Math.sqrt(@sfirst)
  end
  erb :sr
 end 

 get '/bmi' do 
  @bfirst = params[:bfirst].to_f
  if @bfirst > 0.0
    @bsecond = params[:bsecond].to_f 
    @bresult = @bfirst/(@bsecond**2)
  end
  erb :bmi
  end


get '/mortage' do
    @principal = params[:principal].to_f
    if @principal > 0.0
    @int_rate = params[:int_rate].to_f
    @num_payments = params[:num_payments].to_i

    @result_mort_calc = (@principal * (@int_rate * (1 + @int_rate)**@num_payments) / ((1+@int_rate)**@num_payments - 1)).round(2)
end
    erb :mortage
end

# get '/mortage' do 
#   @pricipal = params[:pricipal].to_f
#   @yearly_intrest = params[:yearly_intrest].to_f
#   @no_payments = params[:no_payments].to_f
  
#   @mresult = (@principal*(@yearly_intrest*(1 + @yearly_intrest)**@no_payments)/((1+@yearly_intrest)**@no_payments - 1)).round(2)

# erb :mortage
# end 








