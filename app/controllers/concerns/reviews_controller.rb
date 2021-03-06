class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    redirect_to review_path(@review)
  end

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end


  private

  def rreview_params
    return params.require(:review).permit(:content, :rating)
  end


  def set_review
    @review = Review.find(params[:id])
  end

end
