class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
   # GET /index?order=[created_at, cost, contents]
  def index

    @products = Product.all.order(created_at: :desc).page(params[:page]).per_page(5)
    # Search function
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC").page(params[:page]).per_page(5)
    else
      @products = Product.all.order(created_at: :desc).page(params[:page]).per_page(5)
    end

    # Ordering stuff by what's in params
    if params[:order] == 'created_at'
        @products = Product.all.order('created_at DESC').page(params[:page]).per_page(5)
    elsif params[:order] == 'cost'
        @products = Product.all.order('cost ASC').page(params[:page]).per_page(5)
    elsif params[:order] == 'contents'
        @products = Product.all.order('contents').page(params[:page]).per_page(5)
    else
    end

    # Google maps marker function
    @hash = Gmaps4rails.build_markers(@products) do |product, marker|
      marker.lat product.latitude
      marker.lng product.longitude
      marker.infowindow product.title
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    @product.location = current_user.location

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end

    if current_user.products.count == 5 && current_user.badges(name: "Super Producer").blank?
      Badge.create(user_id: current_user.id, name: "Super Producer")
    end

    if current_user.products.where(perishables: true).count == 5 && current_user.badges(name: "Green Thumb").blank?
      Badge.create(user_id: current_user.id, name: "Green Thumb")
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    authorize @product
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    authorize @product
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :user_id, :cost, :collection, :items, :contents, :perishables, :non_perishables, :description, {images: []})
    end
end
