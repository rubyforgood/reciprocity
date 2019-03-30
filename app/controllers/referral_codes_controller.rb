class ReferralCodesController < ApplicationController
  before_action :set_referral_code, only: [:show, :edit, :update, :destroy]

  # GET /referral_codes
  # GET /referral_codes.json
  def index
    @referral_codes = ReferralCode.all
  end

  # GET /referral_codes/1
  # GET /referral_codes/1.json
  def show
  end

  # GET /referral_codes/new
  def new
    @referral_code = ReferralCode.new
  end

  # GET /referral_codes/1/edit
  def edit
  end

  # POST /referral_codes
  # POST /referral_codes.json
  def create
    @referral_code = ReferralCode.new(referral_code_params)

    respond_to do |format|
      if @referral_code.save
        format.html { redirect_to @referral_code, notice: 'Referral code was successfully created.' }
        format.json { render :show, status: :created, location: @referral_code }
      else
        format.html { render :new }
        format.json { render json: @referral_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referral_codes/1
  # PATCH/PUT /referral_codes/1.json
  def update
    respond_to do |format|
      if @referral_code.update(referral_code_params)
        format.html { redirect_to @referral_code, notice: 'Referral code was successfully updated.' }
        format.json { render :show, status: :ok, location: @referral_code }
      else
        format.html { render :edit }
        format.json { render json: @referral_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referral_codes/1
  # DELETE /referral_codes/1.json
  def destroy
    @referral_code.destroy
    respond_to do |format|
      format.html { redirect_to referral_codes_url, notice: 'Referral code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referral_code
      @referral_code = ReferralCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referral_code_params
      params.require(:referral_code).permit(:nonce, :type, :code, :participant_id, :used)
    end
end
