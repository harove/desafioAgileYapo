class SalesController < ApplicationController
   before_action :authenticate_user!

   def index
      @sales = Sale.all
   end
   
   
   
   
   def create
      @product = Product.find(params[:product_id])
      Sale.create!({
         product_id: @product.id,
         user_id: current_user.id
      })
      @product.sold = true
      @product.save!
      redirect_to products_path
      
   
   end   
end
