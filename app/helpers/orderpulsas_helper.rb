module OrderpulsasHelper
	def fields_for_pulsa(pulsa, &block)
	  prefix = pulsa.new_record? ? 'new' : 'existing'
	  fields_for("orderpulsa[#{prefix}_pulsa_attributes][]", pulsa, &block)
	end

	def add_pulsa_link(name) 
	  link_to name do |page| 
	    page.insert_html :bottom, :pulsas, :partial => 'pulsa', :object => Pulsa.new 
	  end 
	end 
end