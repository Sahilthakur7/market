class AgentsController < ApplicationController
    def show
        @agent = Agent.find(params[:id])
        @player = Player.new
    end

    def players
        @players = Player.all
    end

          def dealings
              @enquiries2 = Enquiry.all
              @x = current_agent
              @enquiries = Enquiry.select do |enquiry|

                  enquiry.player.in?(current_agent.players)
              end
          end

          def respond
             @enquiry = Enquiry.find(params[:id])
          end

          private




end
