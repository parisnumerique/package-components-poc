module Paris
  module Component
    class Railtie < ::Rails::Railtie
      config.after_initialize do |app|
        app.config.komponent.component_paths.append(Paris::Components.root.join("frontend/components"))
      end

      initializer "paris_components.action_dispatch" do |app|
        ActiveSupport.on_load :action_controller do
          ActionController::Base.prepend_view_path Paris::Components.root.join("frontend")
        end
      end

      initializer 'paris_components.autoload', before: :set_autoload_paths do |app|
        app.config.autoload_paths << Paris::Components.root.join("frontend")
      end
    end
  end
end
