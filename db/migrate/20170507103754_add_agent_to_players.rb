class AddAgentToPlayers < ActiveRecord::Migration
  def change
    add_reference :players, :agent, index: true
    add_foreign_key :players, :agents
  end
end
