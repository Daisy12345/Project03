class PersonalclassesController < ApplicationController
  before_action :set_personalclass, only: [:show, :edit, :update, :destroy]

  # GET /personalclasses
  # GET /personalclasses.json
  def index
    @personalclasses = Personalclass.all
  end

  # GET /personalclasses/1
  # GET /personalclasses/1.json
  def show
  end

  # GET /personalclasses/new
  def new
    @personalclass = Personalclass.new
  end

  # GET /personalclasses/1/edit
  def edit
  end

  # POST /personalclasses
  # POST /personalclasses.json
  def create
    @personalclass = Personalclass.new(personalclass_params)

    respond_to do |format|
      if @personalclass.save
        format.html { redirect_to @personalclass, notice: 'Personalclass was successfully created.' }
        format.json { render :show, status: :created, location: @personalclass }
      else
        format.html { render :new }
        format.json { render json: @personalclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personalclasses/1
  # PATCH/PUT /personalclasses/1.json
  def update
    respond_to do |format|
      if @personalclass.update(personalclass_params)
        format.html { redirect_to @personalclass, notice: 'Personalclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @personalclass }
      else
        format.html { render :edit }
        format.json { render json: @personalclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personalclasses/1
  # DELETE /personalclasses/1.json
  def destroy
    @personalclass.destroy
    respond_to do |format|
      format.html { redirect_to personalclasses_url, notice: 'Personalclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    #   user = User.find_by_id(params[:id])
    #   user.update_attribute(:user_agreement, true)
    #   flash[:success] = "accepted agreement"
    # else
    #   user = User.find_by_id(params[:id])
    #   user.update_attribute(:user_agreement, false)
    #   flash[:success] = "didn't accepted agreement"
   

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personalclass
      @personalclass = Personalclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personalclass_params
      params.require(:personalclass).permit(:tutor_name, :subject, :date, :time, :user_id, :booked)
    end
end
