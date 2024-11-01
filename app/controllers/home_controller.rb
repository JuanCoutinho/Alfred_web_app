class HomeController < ApplicationController
  # Este método deve ser implementado para verificar se o usuário está logado
  before_action :user_logged_in

  def index
    # A lógica para a página inicial pode ser adicionada aqui
  end

  private

  def user_logged_in
    # Exemplo de como verificar se um usuário está logado
    unless user_signed_in?
      redirect_to new_user_session_path, alert: 'Você precisa fazer login para acessar esta página.'
    end
  end
end
  