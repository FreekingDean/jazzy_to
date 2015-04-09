module JazzyTo
  class JazzyController < ApplicationController
    before_action :set_jazzy
    def approve
      @jazzy.approve!
    end

    def revert
      @jazzy.revert!
    end

    def save
      @jazzy.update(valid_params)
    end

    private

    def valid_params
      params.require(:jazzy).permit(
        :content,
        :pending_content
      )
    end

    def set_jazzy
      @jazzy = Jazzy.find_or_initialize_by_id(params[:id])
    end
  end
end
