Rails.application.routes.draw do






  get 'enlaces/index'

  get 'enlaces/ver'

  get 'enlaces/crear'

  get 'enlaces/eliminar'

  get 'directorio/index'

  get 'directorio/crear'

  get 'directorio/editar'

  get 'directorio/ver'

  get 'perfil/index'

  get 'perfil/crear'

  get 'perfil/editar'

  get 'perfil/ver'

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
  get 'grupos' => 'roles#index', as: :roles
  get 'grupo/crear' => 'roles#crear', as: :crear_roles
  get 'editar/grupo' => 'roles#editar', as: :editar_roles
  get 'ver/grupo' => 'roles#ver', as: :ver_roles
  get 'archivos' => 'archivos#index', as: :archivos
  get 'archivos/crear' => 'archivos#crear', as: :crear_archivos
  get 'editar/archivos' => 'archivos#editar', as: :editar_archivos
  get 'ver/archivos' => 'archivos#ver', as: :ver_archivos
  get 'perfil' => 'perfil#index', as: :perfil
  get 'ver/perfil' => 'perfil#ver', as: :ver_perfil
  get 'directorio' => 'directorio#index', as: :directorio
  get 'knowledge_base' => 'conocimiento#index', as: :knowledge_base
  get 'ver/knowledge_base' => 'conocimiento#ver', as: :ver_knowledge_base
  get 'enlaces' => 'enlaces#index', as: :enlaces
  get 'ver/enlaces' => 'enlaces#ver', as: :ver_enlaces
  get 'newsletter' => 'newsletter#index', as: :newsletter
  get 'ver/newsletter' => 'newsletter#ver', as: :ver_newsletter
  namespace :api do
      namespace :v1 do
        resources :get_user, path: "get_user"
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
