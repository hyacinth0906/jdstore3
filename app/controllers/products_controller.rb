class ProductsController < ApplicationController
  before_action :validate_search_key, only: [:search]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @app = App.new
    @categories = Category.all.map { |c| [c.name, c.id] } #这一行为加入的代码
  end

  def create
    @product = Product.new(product_params)
    @product.category_id = params[:category_id]
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def add_to_cart
     @product = Product.find(params[:id])
     if !current_cart.products.include?(@product)
          current_cart.add_product_to_cart(@product)
          flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
        else
          flash[:warning] = "你的购物车已有此商品"
        end
          redirect_to :back
   end

   def search
     if @query_string.present?
       search_result = Product.published.ransack(@search_criteria).result(:distinct => true)
       @Products = search_result.paginate(:page => params[:page], :per_page => 5 )
     end
   end

   def product_params
      params.require(:product).permit(:title, :description, :quantity, :price, :image, :category_id)
   end


   protected

   def validate_search_key
     @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
     @search_criteria = search_criteria(@query_string)
   end

   def search_criteria(query_string)
     { :title_cont => query_string }
   end

end
