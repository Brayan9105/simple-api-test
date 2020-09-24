class ItemsController < ApplicationController
  
  before_action :set_checklist
  before_action :set_item, only: [:show, :update, :destroy]

  def index
    json_response(@checklist.tasks)
  end

   def show
     json_response(@item)
   end

   def create
     @checklist.tasks.create!(item_params)
     json_response(@checklist, :created)
   end

   def update
     @item.update(item_params)
     head :no_content
   end

   def destroy
     @item.destroy
     head :no_content
   end

   private
     def item_params
       params.permit(:nombre, :hecho)
     end

     def set_item
       @item = @checklist.tasks.find_by!(id: params[:id]) if @checklist
     end

     def set_checklist
        @checklist = Checklist.find(params[:checklist_id])
     end
end