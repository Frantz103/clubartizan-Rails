require "lockup/engine"

module Lockup
  extend ActiveSupport::Concern

  included do
    before_filter :check_for_lockup, except: ["unlock"]
  end

  private

  def check_for_lockup
    if lockup_codeword_present?
      if cookies[:lockup].present?
        if cookies[:lockup] == lockup_codeword
          return
        else
          redirect_to lockup.unlock_path(return_to: request.fullpath.split('?lockup_codeword')[0], lockup_codeword: params[:lockup_codeword])
        end
      else
        redirect_to lockup.unlock_path(return_to: request.fullpath.split('?lockup_codeword')[0], lockup_codeword: params[:lockup_codeword])
      end
    end
  end

  def lockup_codeword_present?
    if ENV["LOCKUP_CODEWORD"].present? || ENV["lockup_codeword"].present? || ((Rails::VERSION::MAJOR >= 4 && Rails::VERSION::MINOR >= 1) && Rails.application.secrets.lockup_codeword.present?)
      true
    else
      false
    end
  end

  def lockup_codeword
    if ENV["LOCKUP_CODEWORD"].present?
      ENV["LOCKUP_CODEWORD"].to_s.downcase
    elsif ENV["lockup_codeword"].present?
      ENV["lockup_codeword"].to_s.downcase
    elsif (Rails::VERSION::MAJOR >= 4 && Rails::VERSION::MINOR >= 1) && Rails.application.secrets.lockup_codeword.present?
      Rails.application.secrets.lockup_codeword.to_s.downcase
    end
  end

end
