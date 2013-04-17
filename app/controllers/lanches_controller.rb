class LanchesController < ApplicationController
  # GET /lanches
  # GET /lanches.json
  def index
    @lanches = Lanche.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lanches }
    end
  end

  # GET /lanches/new
  # GET /lanches/new.json
  def new
    @lanche = Lanche.new
    @lanche.descricao = 'Lanche + suco'

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /lanches
  # POST /lanches.json
  def create
    @lanche = Lanche.new(params[:lanche])

    respond_to do |format|
      if @lanche.save
        format.html { redirect_to lanches_url, notice: 'O seu pedido foi feito com sucesso.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # DELETE /lanches/1
  # DELETE /lanches/1.json
  def destroy
    @lanche = Lanche.find(params[:id])
    @lanche.destroy

    respond_to do |format|
      format.html { redirect_to lanches_url }
      format.json { head :no_content }
    end
  end

  # GET /lanches/menu
  def menu
    respond_to do |format|
      format.html # menu.html.erb
    end
  end
end
