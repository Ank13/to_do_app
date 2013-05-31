require_relative '../config/application'

# puts TasksController.add({name: "Suck", description: 'This worked. I ***** my own nose!'}) 
# puts TasksController.add({name: "Lick", description: 'This worked. I licked my own nose!'})

# task = {id: Task.last.id}
# puts TasksController.complete(task)
# puts TasksController.delete(task)


# tasks = TasksController.list('Lick')
# table_data = []
# tasks.each do |task|
#   completed = 'X'.center("completed".length) if task.completed_at
#   table_data << { id: task.id, description: task.description, completed: completed }
# end



# Formatador.display_table(table_data, [:id, :description, :completed])



# tasks = TasksController.list('Suck')
# table_data = []
# tasks.each do |task|
#   completed = 'X'.center("completed".length) if task.completed_at
#   table_data << { id: task.id, description: task.description, completed: completed }
# end



# Formatador.display_table(table_data, [:id, :description, :completed])


new_list = {id: List.last.id}
puts ListsController.delete(new_list)

