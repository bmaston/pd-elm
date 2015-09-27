class TazerDevicesController < ApplicationController
  before_action :set_tazer_device, only: [:show, :edit, :update, :destroy]

  # GET /tazer_devices
  # GET /tazer_devices.json
  def index
    @tazer_devices = TazerDevice.all
  end

  # GET /tazer_devices/1
  # GET /tazer_devices/1.json
  def show
  end

  # GET /tazer_devices/new
  def new
    @tazer_device = TazerDevice.new
  end

  # GET /tazer_devices/1/edit
  def edit
  end

  # POST /tazer_devices
  # POST /tazer_devices.json
  def create
    @tazer_device = TazerDevice.new(tazer_device_params)

    respond_to do |format|
      if @tazer_device.save
        format.html { redirect_to @tazer_device, notice: 'Tazer device was successfully created.' }
        format.json { render :show, status: :created, location: @tazer_device }
      else
        format.html { render :new }
        format.json { render json: @tazer_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tazer_devices/1
  # PATCH/PUT /tazer_devices/1.json
  def update
    respond_to do |format|
      if @tazer_device.update(tazer_device_params)
        format.html { redirect_to @tazer_device, notice: 'Tazer device was successfully updated.' }
        format.json { render :show, status: :ok, location: @tazer_device }
      else
        format.html { render :edit }
        format.json { render json: @tazer_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tazer_devices/1
  # DELETE /tazer_devices/1.json
  def destroy
    @tazer_device.destroy
    respond_to do |format|
      format.html { redirect_to tazer_devices_url, notice: 'Tazer device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tazer_device
      @tazer_device = TazerDevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tazer_device_params
      params.require(:tazer_device).permit(:serial_number, :model, :date_received, :location)
    end
end
