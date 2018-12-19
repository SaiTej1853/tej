
class Api::V1::ProductsController < Api::V1::BaseController
  before_action :authenticate_user!
  def index
    respond_with Product.all
  end

  def create
    respond_with :api, :v1, Product.create(product_params)
  end

  def destroy
    respond_with Product.destroy(params[:id])
  end

  def update
    product = Product.find(params["id"])
    Product.update_attributes(product_params)
    respond_with product, json: product
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :SKU_ID, :expire_date)
  end
end
