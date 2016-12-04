class PagesController < ApplicationController
  helper_method :resource, :resource_name, :devise_mapping
  def home
  end

  def status
  end

  def livemap
  end

  def resource_name
    :employee
  end

  def resource
    @resource ||= Employee.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:employee]
  end
end
