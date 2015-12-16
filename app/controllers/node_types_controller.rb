class NodeTypesController < ApplicationController
  #before_action :set_node_type, only: [:edit, :update, :show, :destroy]
  def new
    @node_type = Node_type.new
  end

  def create
    #render plain: params[:article].inspect
    @node_type = Node_type.new(node_type_params)
    if @node_type.save
      flash[:notice] = "Node_type was successfully created"
      redirect_to node_type_path(@node_type)
    else
      render 'new'
    end
  end

  def node_type_params
    params.require(:node_type).permit(:title, :description)
  end

  def show
    @node_type = Node_type.find(params[:id])
  end

  def edit
    @node_type = Node_type.find(params[:id])
  end

  def update
    @node_type = Node_type.find(params[:id])
    if @node_type.update(node_type_params)
      flash[:notice] = "Node_type was successfully updated"
      redirect_to node_type_path(@node_type)
    else
      render 'edit'
    end
  end

  def destroy
    @node_type = Node_type.find(params[:id])
    @node_type.destroy
    flash[:notice] = "Node_type was successfully deleted"
    redirect_to node_types_path
  end


  def index
    @node_types = Node_type.all
  end


end