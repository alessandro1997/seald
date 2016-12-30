# frozen_string_literal: true
module API
  module V1
    module Confirmation
      module Operation
        class Create < Pragma::Operation::Base
          include Pragma::Operation::Defaults

          def call
            validate! OpenStruct.new

            User.send_confirmation_instructions(email: params[:email])

            head :no_content
          end
        end
      end
    end
  end
end
