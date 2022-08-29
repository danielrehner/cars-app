module CarsHelper
    def can_display_car_details?
        @selected_make.present? && @selected_model.present? && @selected_year.present?
    end

    def car_details_message
        if @selected_make&.name == 'Tesla'
            return "Elon says the #{@selected_year.name} #{@selected_make.name} #{@selected_model.name} is an excellent vehicle."
        end
        "Elon says the #{@selected_year.name} #{@selected_make.name} #{@selected_model.name} is not as good as a Tesla."
    end
end
