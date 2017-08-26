# encoding: utf-8

class ApplicantResumeUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  
  def fog_directory
    'employment-applications'
  end
  
  def store_dir
    "#{model.firstname+'_'+model.lastname+'_'+model.id.to_s}".tr(" ", "_")
  end
  
  def filename
    "resume."+"#{file.extension}".tr(" ", "_") if original_filename.present?
  end
  
  def extension_white_list
    %w(pdf)
  end
end