require 'sinatra'
require 'sinatra/reloader' if development?

class ChurrasDelivery < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # Tela Inicial
  get '/' do
    erb :index
  end

  # Rotas para Realizar Pedido
  get '/pedidos' do
    'Listar pedidos'
  end

  get '/pedidos/:id' do
    "Detalhes do pedido #{params[:id]}"
  end

  post '/pedidos' do
    'Criar novo pedido'
  end

  put '/pedidos/:id' do
    "Atualizar pedido #{params[:id]}"
  end

  delete '/pedidos/:id' do
    "Cancelar pedido #{params[:id]}"
  end

  # Rotas para Cadastrar
  get '/cadastrar' do
    'Tela de cadastro'
  end

  post '/cadastrar' do
    'Processar cadastro'
  end

  # Rotas para Fidelizar
  get '/fidelizar' do
    'Tela de fidelização'
  end

  post '/fidelizar' do
    'Processar fidelização'
  end

  # Rodar o servidor
  run! if app_file == $0
end


