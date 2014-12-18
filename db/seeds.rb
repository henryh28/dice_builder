# 6 types of dice:  offense, research, worker,
#                   gatherer, general, saboteur


start = Player.create(name: "echo")
start.dice_pool << Dice.new(dice_type: "gatherer", sides: 4) << Dice.new(dice_type: "worker", sides: 4)
start.dice_pool << Dice.new(dice_type: "offense", sides: 4)
start.save
