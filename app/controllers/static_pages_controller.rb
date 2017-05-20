class StaticPagesController < ApplicationController
    def home

    end

    def options

    end
    def optionsn


    end

    def calendar

    end

    def convert

    end

    def conversion
        @number = params[:input]
        @currency1 = params[:no]
        @currency2 = params[:no2]
        if @currency1 == @currency2
            @output = @number.to_i 
        elsif @currency1 == "1" && @currency2 == "3"
            @output = @number.to_i * 1.30
        elsif @currency1 == 1.to_s && @currency2 == 2.to_s
            @output = @number.to_i * 1.16 
        elsif @currency1 == 2.to_s && @currency1 == 1.to_s
            @output = @number.to_i / 1.16
        elsif @currency1 == 3.to_s && @currency1 == 1.to_s
            @output = @number.to_i / 1.30
        elsif @currency1 == 2.to_s && @currency2 == 3.to_s
            @output = @number.to_i * 1.14
        elsif @currency1 == 3.to_s && @currency2 == 2.to_s
            @output = @number.to_i / 1.14


        end
        respond_to do |format|
            format.js
        end



    end
end
