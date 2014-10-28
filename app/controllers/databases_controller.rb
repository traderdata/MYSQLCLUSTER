class DatabasesController < ApplicationController
  layout "admin"
  def new
    @title = "New Database"
    @title0 = "Databases"
    @title2 = "New Database"
    @database =Database.new()
    render :new
  end

  def delete


  end

  def save
    Database.transaction do
      @database= Database.new(database_params)
      #@database.name= session[:account_id] + "_" + @database.name
      if @database.save
        #verifica em qual cluster database deve ser criado
        #nesse momento nao vou verificar, vou retornar o cluster 1
        Cluster.connection.execute("CREATE DATABASE `" + @database.name + "` /*!40100 DEFAULT CHARACTER SET latin1 */;")
        @cluster = Cluster.find_by(1)

        #roda script de execução

        #registra database em cluster
        #roda script de criação

        #envia email

        redirect_to databases_index_path

      else
        render :new
      end
    end

  end

  def index
    @title = "Databases"
    @title2 = "Databases"
    @databases = Database.all
    render layout: 'layouts/admin'

  end

    private
    def database_params
      params.require(:database).permit(:name)
    end

  end
