require 'prime'

class InputsController < ApplicationController
  before_action :set_input, only: %i[ show edit update destroy ]

  # GET /inputs or /inputs.json
  def index
    @inputs = Input.all
  end

  # GET /inputs/1 or /inputs/1.json
  def show
  end

  # GET /inputs/new
  def new
    @input = Input.new
  end

  # GET /inputs/1/edit
  def edit
  end

  # POST /inputs or /inputs.json
  def create
    @input = Input.new(input_params)
    puts @input
    puts isPrime?(@input[:number])
    if isPrime?(@input[:number])
      @input[:prime_number] = 1
    else
      @input[:prime_number] = 0
    end

    respond_to do |format|
      if @input.save
        format.html { redirect_to @input, notice: "Input was successfully created." }
        format.json { render :show, status: :created, location: @input }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @input.errors, status: :unprocessable_entity }
      end
    end
  end

  def isPrime?(num)
    return if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
  end

  # PATCH/PUT /inputs/1 or /inputs/1.json
  def update
    respond_to do |format|
      if @input.update(input_params)
        format.html { redirect_to @input, notice: "Input was successfully updated." }
        format.json { render :show, status: :ok, location: @input }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inputs/1 or /inputs/1.json
  def destroy
    @input.destroy
    respond_to do |format|
      format.html { redirect_to inputs_url, notice: "Input was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_input
      @input = Input.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def input_params
      params.require(:input).permit(:number, :prime_number)
    end
end
