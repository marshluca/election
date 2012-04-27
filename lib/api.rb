module Election
  class API < Grape::API
    prefix "api"
    version "v1"

    helpers do
      def authenticate!
        error!('401 Unauthorized', 401) unless params[:appkey]
      end

      def params_exist_blank?(*params)
        params.detect { |param| return true if param.blank? }
      end

      def response_code(status, message)
        {:status => status, :message => message}
      end
    end

    get '/test' do
      { :message => 'Hello world !', :version => version }
    end

    resource :feeds do
      get '/category/:cid' do
        {:result => Feed.category(params[:cid])}
      end
    end

    %w(authors categories feeds).each do |name|
      resource name do
        get '/all' do
          {:result => name.singularize.capitalize.constantize.all}
        end

        get '/:id' do
          {:result => name.singularize.capitalize.constantize.find(params[:id])}
        end
      end
    end
  end
end