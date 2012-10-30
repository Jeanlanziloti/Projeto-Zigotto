class LayersController < ApplicationController

  def index
    @layers = Layer.all

    respond_to do |format|
      format.html 
      format.json { render json: @layers }
    end
  end

 
  def show
    @layer = Layer.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @layer }
    end
  end

 
  def new
    @layer = Layer.new

    respond_to do |format|
      format.html 
      format.json { render json: @layer }
    end
  end

  def edit
    @layer = Layer.find(params[:id])
  end

  def create
    @layer = Layer.new(params[:layer])

    respond_to do |format|
      if @layer.save
        format.html { redirect_to @layer, notice: 'Camada criada com sucesso.' }
        format.json { render json: @layer, status: :created, location: @layer }
      else
        format.html { render action: "new" }
        format.json { render json: @layer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @layer = Layer.find(params[:id])

    respond_to do |format|
      if @layer.update_attributes(params[:layer])
        format.html { redirect_to @layer, notice: 'Camada atualizada com sucesso' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @layer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @layer = Layer.find(params[:id])
    @layer.destroy

    respond_to do |format|
      format.html { redirect_to layers_url }
      format.json { head :no_content }
    end
  end
end
