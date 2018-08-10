Rails.application.routes.draw do






  get 'newsletter/index'

  get 'newsletter/crear'

  get 'newsletter/editar'

  get 'newsletter/ver'

  get 'conocimiento/index'

  get 'conocimiento/crear'

  get 'conocimiento/editar'

  get 'conocimiento/ver'

  get 'archivos/index'

  get 'archivos/crear'

  get 'archivos/editar'

  get 'archivos/ver'

  get 'roles/index'

  get 'roles/crear'

  get 'roles/editar'

  get 'roles/ver'

  get 'usuarios/index'

  get 'usuarios/crear'

  get 'usuarios/editar'

  get 'usuarios/ver'

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
  get 'usuarios' => 'usuarios#index', as: :usuarios
  get 'usuarios/crear' => 'usuarios#crear', as: :crear_usuarios
  get 'editar/usuarios' => 'usuarios#editar', as: :editar_usuarios
  get 'ver/usuarios' => 'usuarios#ver', as: :ver_usuarios
  namespace :api do
      namespace :v1 do
        resources :get_user, path: "get_user"
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
