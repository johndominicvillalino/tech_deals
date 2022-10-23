Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://tech-deals-c9f2f.web.app/'
      resource '*', headers: :any, methods: [:get, :post, :patch, :delete]
    end
  end