# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
 

 
  def google_oauth2
    @user=User.from_omniauth(request.env["omniauth.auth"])
  if @user.persisted?
    sign_out_all_scopes
    flash[:notice] = t 'devise.omniauth_callbacks.success', kind: 'Google'
    sign_in_and_redirect @user, event: :authentication
  else
    flash[:alert] = t 'devise.omniauth_callbacks.failure', kind: 'Google', reason: "#{auth.info.email} is not authorized."
    redirect_to new_user_session_path
  end
 end



def facebook
  @user=User.from_omniauth(request.env["omniauth.auth"])
if @user.persisted?
  sign_out_all_scopes
  flash[:notice] = t 'devise.omniauth_callbacks.success', kind: 'Facebook'
  sign_in_and_redirect @user, event: :authentication
else
  flash[:alert] = t 'devise.omniauth_callbacks.failure', kind: 'Facebook', reason: "#{auth.info.email} is not authorized."
  redirect_to new_user_session_path
end
end
end
