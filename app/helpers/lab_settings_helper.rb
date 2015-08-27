module LabSettingsHelper
	def jasonlabsettings
		
		
			@labsettings=LabSetting.where("lab_id = ?",session[:lab_id])
			raw(@labsettings.first.to_json only: [:max_steps,:total_steps,:step_length])
	end
end
