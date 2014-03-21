class ItemColorsController < ApplicationController
  before_action :set_item_color, only: [:show, :edit, :update, :destroy]

  # GET /item_colors
  # GET /item_colors.json
  def index
    @item_colors = ItemColor.all
  end

  # GET /item_colors/1
  # GET /item_colors/1.json
  def show
  end

  # GET /item_colors/new
  def new
    @item_color = ItemColor.new
  end

  # GET /item_colors/1/edit
  def edit
  end

  # POST /item_colors
  # POST /item_colors.json
  def create
    @item_color = ItemColor.new(item_color_params)

    respond_to do |format|
      if @item_color.save
        format.html { redirect_to @item_color, notice: 'Item color was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item_color }
      else
        format.html { render action: 'new' }
        format.json { render json: @item_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_colors/1
  # PATCH/PUT /item_colors/1.json
  def update
    respond_to do |format|
      if @item_color.update(item_color_params)
        format.html { redirect_to @item_color, notice: 'Item color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_colors/1
  # DELETE /item_colors/1.json
  def destroy
    @item_color.destroy
    respond_to do |format|
      format.html { redirect_to item_colors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_color
      @item_color = ItemColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_color_params
      params.require(:item_color).permit(:color_id, :item_id)
    end
end
