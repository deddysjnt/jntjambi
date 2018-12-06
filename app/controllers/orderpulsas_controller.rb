class OrderpulsasController < ApplicationController
  def new
    @orderpulsa = Orderpulsa.new
    @orderpulsa.pulsas.build
  end

  def create
    @orderpulsa = Orderpulsa.new(params[:orderpulsa])
    if @orderpulsa.save
      flash[:notice] = "Successfully created orderpulsa and tasks."
      redirect_to orderpulsas_path
    else
      render :action => 'new'
    end
  end

  def edit
    @orderpulsa = Orderpulsa.find(params[:id])
  end

  def update
    params[:orderpulsa][:existing_pulsa_attributes] ||= {}
    
    @orderpulsa = Orderpulsa.find(params[:id])
    if @orderpulsa.update_attributes(params[:orderpulsa])
      flash[:notice] = "Successfully updated orderpulsa and tasks."
      redirect_to orderpulsa_path(@orderpulsa)
    else
      render :action => 'edit'
    end
  end
end