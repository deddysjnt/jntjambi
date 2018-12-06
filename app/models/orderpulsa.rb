class Orderpulsa < ActiveRecord::Base
  has_many :pulsas, :dependent => :destroy

  validates_presence_of :name
  validates_associated :pulsas
  
  after_update :save_pulsa

  def new_pulsa_attributes=(pulsa_attributes)
    pulsa_attributes.each do |attributes|
      pulsas.build(attributes)
    end
  end
  
  def existing_pulsa_attributes=(pulsa_attributes)
    pulsas.reject(&:new_record?).each do |pulsa|
      attributes = pulsa_attributes[pulsa.id.to_s]
      if attributes
        pulsa.attributes = attributes
      else
        pulsas.delete(pulsa)
      end
    end
  end
  
  def save_pulsas
    pulsas.each do |pulsa|
      pulsa.save(false)
    end
  end
end