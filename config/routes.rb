Rails.application.routes.draw do






  get 'poli/index'

  get 'poli/crear'

  get 'poli/editar'

  get 'poli/ver'

  get 'politica/crear'

  get 'politica/editar'

  get 'politica/ver'

  get 'login/index'

  devise_for :users
  devise_for :admins
  resources :actividades_minuta
  resources :objetivo_minuta
  resources :participantes_minuta
  resources :minuta
  get 'minuta/index'

  get 'document/index'

  get 'app/index'
  root 'app#index'
  get 'documentos' => 'document#index', as: :document
  get 'checklist' => 'checklist#index', as: :checklist
  get 'galeria' => 'galeria#index', as: :galeria
  get 'login' => 'login#index', as: :login
  get 'editar/minuta' => 'minuta#editar', as: :editar
  get 'ver/minuta' => 'minuta#ver', as: :ver
  get 'procedimientos' => 'politica#index', as: :politica
  get 'procedimientos/crear' => 'politica#crear', as: :crear
  get 'editar/procedimiento' => 'politica#editar', as: :editar_procedimientos
  get 'ver/procedimiento' => 'politica#ver', as: :ver_procedimientos
  get 'politicas' => 'poli#index', as: :poli
  get 'politicas/crear' => 'poli#crear', as: :crear_politica
  get 'editar/politica' => 'poli#editar', as: :editar_politicas
  get 'ver/politica' => 'poli#ver', as: :ver_politicas
    get 'checklist/crear' => 'checklist#crear', as: :crear_checklist
  get 'editar/checklist' => 'checklist#editar', as: :editar_checklist
  get 'ver/checklist' => 'checklist#ver', as: :ver_checklist
  namespace :api do
      namespace :v1 do
        resources :get_user, path: "get_user"
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
