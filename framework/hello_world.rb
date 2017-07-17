# app.rb
require_relative 'advice'

class App
  def call(env)
  case env['REQUEST_PATH']
  when '/'
    status = '200'
    headers = {"Content-Type" => 'text/html'}
    response(status, headers) do
      erb :index
    end
  when '/advice'
    piece_of_advice = Advice.new.generate
    status = '200'
    headers = {"Content-Type" => 'text/html'}
    response(status, headers) do
      erb :advice, message: piece_of_advice
    end
  else
    status = '404'
    headers = {"Content-Type" => 'text/html', "Content-Length" => '61'}
    response(status, headers) do
      erb :not_found
    end
  end
end


def response(status, headers, body = '')
  body = yield if block_given?
  [status, headers, [body]]
end


  private

  def erb(filename, local = {})
    b = binding
    message = local[:message]
    path = File.expand_path("../views/#{filename}.erb", __FILE__)
    content = File.read(path)
    ERB.new(content).result(b)
  end
end

