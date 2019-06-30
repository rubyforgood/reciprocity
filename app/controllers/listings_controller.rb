class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def show; end

  def new
  end

  def create
    # @listing = Listing.new(listing_params.merge(created_by_id: current_user.participants.first.id))

    # respond_to do |format|
    #   if @listing.save
    #     format.html { redirect_to home_index_path(current_user), notice: t('listing.controller.create.success') }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @listing.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def edit; end

  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: t('listing.controller.update.success') }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: t('listing.controller.destroy.success') }
      format.json { head :no_content }
    end
  end

  def confirm
    @listing = Listing.new(listing_params)

    render react_component: 'listings/forms/Confirm', props: {
      listing: @listing,
      form: {
        action: "/listings",
        redirect: '/',
        method: 'post',
        token: session[:_csrf_token]
      }
    }
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:created_by_id,
                                    :type,
                                    :title,
                                    :description,
                                    :reference_url,
                                    :publish_start_date,
                                    :publish_end_date,
                                    :interaction_start_date,
                                    :interaction_end_date,
                                    :zip_code,
                                    :tag_list,
                                    photos: [])
  end
end
