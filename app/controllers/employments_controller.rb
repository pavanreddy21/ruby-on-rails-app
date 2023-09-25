class EmploymentsController < ApplicationController
    def new
        @employment = Employment.new
      end

      def create
        @employment = Employment.new(employment_params)
    
        respond_to do |format|
          if @employment.save
            format.html { redirect_to root_path, notice: "Employment was successfully created" }
          else
            format.html { render :new, status: :unprocessable_entity }
          end
        end
      end

      def edit
        @employment = Employment.find(params[:id])
      end
    
      def update
        @employment = Employment.find(params[:id])
        respond_to do |format|
          if @employment.update(employment_params)
            format.html { redirect_to root_path, notice: "Employment was successfully updated" }
          else
            format.html { render :edit, status: :unprocessable_entity }
          end
        end
      end
    
      def destroy
        @employment = Employment.find(params[:id])
        @employment.destroy
        redirect_to root_path, notice: "Employment was successfully deleted."
      end


      private
  
      def employment_params
        puts params
        params.require(:employment).permit(:employer, :start_date, :end_date, :user_id)
      end
end
