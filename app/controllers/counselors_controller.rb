class CounselorsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  # GET /counselors
  # GET /counselors.json
  def index
    @counselors = Counselor.all
  end
  # GET /counselors/1
  # GET /counselors/1.json
  def show
    @counselor = Counselor.where(user_id: current_user.id)
    puts @counselor
  end
  # GET /counselors/new
  def new
    @counselor = Counselor.new
  end
  # GET /counselors/1/edit
  def edit
    this_counselor = Counselor.where(user_id: current_user.id)
    this_counselor.each do |cou|
    @counselor = Counselor.find(cou.id)
    end
  end

  # POST /counselors
  # POST /counselors.json
  def create
    @counselor = Counselor.new(counselor_params)

    respond_to do |format|
      if @counselor.save
        @counselor.update(:user_id => current_user.id)
        format.html { redirect_to @counselor, notice: 'Thank you for submitting your application to become a Counselor. We will notify you via email once your submission has been reviewed.' }
        format.json { render :show, status: :created, location: @counselor }
      else
        format.html { render :new }
        format.json { render json: @counselor.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /counselors/1
  # PATCH/PUT /counselors/1.json
  def update
    @counselor = Counselor.find(params[:id])

    respond_to do |format|
      if @counselor.update(counselor_params)
        format.html { redirect_to @counselor, notice: 'Counselor was successfully updated.' }
        format.json { render :show, status: :ok, location: @counselor }
      else
        format.html { render :edit }
        format.json { render json: @counselor.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /counselors/1
  # DELETE /counselors/1.json
  def destroy
    @counselor.destroy
    respond_to do |format|
      format.html { redirect_to counselors_url, notice: 'Counselor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_counselor
    #   @counselor = Counselor.find_by(params[:id])
    # end
    # Never trust parameters from the scary internet, only allow the white list through.
    def counselor_params
      params.fetch(:counselor, {}).permit(:first_name, :last_name, :age, :sex, :zipcode, :image, :ssn, :occ_title, :license, :occ_state, :payment, :agreement, :user_id)
    end
end
