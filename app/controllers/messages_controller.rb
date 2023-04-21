require 'twilio-ruby'
class MessagesController <JSONAPI::ResourceController
    def create
        @user = User.find(params[:user_id])
        @message = @user.messages.build(message_params)
    
        if @message.save
          send_message(@message)
          redirect_to user_path(@user)
        else
          render 'users/show'
        end
      end
    
      private
    
      def message_params
        params.require(:message).permit(:content, :send_at)
      end

      
end
