class UserJogosController < ApplicationController
  before_action :set_user_jogo, only: [:show, :edit, :update, :destroy]

  # GET /user_jogos
  # GET /user_jogos.json
  def index
    @user_jogos = UserJogo.all
  end

  # GET /user_jogos/1
  # GET /user_jogos/1.json
  def show
  end

  # GET /user_jogos/new
  def new
    @user_jogo = UserJogo.new
  end

  # GET /user_jogos/1/edit
  def edit
  end

  # POST /user_jogos
  # POST /user_jogos.json
  def create
    @user_jogo = UserJogo.new(user_jogo_params)

    respond_to do |format|
      if @user_jogo.save
        format.html { redirect_to @user_jogo, notice: 'User jogo was successfully created.' }
        format.json { render :show, status: :created, location: @user_jogo }
      else
        format.html { render :new }
        format.json { render json: @user_jogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_jogos/1
  # PATCH/PUT /user_jogos/1.json
  def update
    respond_to do |format|
      if @user_jogo.update(user_jogo_params)
        format.html { redirect_to @user_jogo, notice: 'User jogo was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_jogo }
      else
        format.html { render :edit }
        format.json { render json: @user_jogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_jogos/1
  # DELETE /user_jogos/1.json
  def destroy
    @user_jogo.destroy
    respond_to do |format|
      format.html { redirect_to user_jogos_url, notice: 'User jogo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_jogo
      @user_jogo = UserJogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_jogo_params
      params.require(:user_jogo).permit(:user_id, :jogo_id)
    end
end
