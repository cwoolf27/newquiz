class TestsController < ApplicationController
  def index
    @test = Test.all
  end

  def create
    @test = Test.create(test_params)
    if @test.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private

  def test_params
    params.require(:test).permit(:answer, :name)
  end
end
