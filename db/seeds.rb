require 'faker'


lick = ["Try to lick your heel then run outside and yell, 'i did it america!'.",
        "Try to lick the sky and when people look at you yell unicorns have lives too!!!",
        "Lick a barcode (then go) beeeeeep!"]

buy = ["Buy 2 drinks; sit at a table meant for 2, when some1 asks you 4 the chair, say some1 is sitting there.",
       "Go buy the same tv as your neibour and stand outside and change the channel.",
       "Go to a store and buy 10 garden gnomes, all the same one. See if the check out person says anything."]



list = List.new(name: "Lick")
lick.each do |task|
  list.tasks.build(description: task)
end
list.save



