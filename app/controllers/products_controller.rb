class ProductsController < ApplicationController
  def create
    if current_user
      product = Product.new({
        title: params[:title],
        date: params[:date],
        author: params[:author],
        user_id: current_user.id
      })
      if product.save
        render json: product
      else
        render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {message: "You must be logged in to do that"}, status: :unauthorized
    end
  end
end
