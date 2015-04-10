module JazzyTo
  class JazziesController < ApplicationController
    before_action :set_jazzy
    before_action :check_edit_permissions

    def approve
      @jazzy.approve!
      render json: {success: true, content: @jazzy.content}
    end

    def destroy
      @jazzy.revert!
      render json: {success: true, content: @jazzy.content}
    end

    def update
      @jazzy.update(valid_params)
      render json: {success: true, content: @jazzy.content}
    end

    private

    def valid_params
      params.require(:jazzy).permit(
        :content,
        :pending_content
      )
    end

    def set_jazzy
      @jazzy = Jazzy.find_by_id(params[:id])
    end

    def check_edit_permissions
      render :json => {success: false}, :status => :unauthorized unless eval(JazzyTo.configuration.editor_check)
    end
  end
end
