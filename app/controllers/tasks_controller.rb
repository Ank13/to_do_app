class TasksController

  def self.add(params)
    @task = Task.new(description: params[:description])
    if @list = List.find_or_create_by_name(params[:name])
      @list.tasks << @task
      if @list.save
        "new task added to #{@list.name}"
      else
        "invalid task"
      end
    else
      "No list by that name."
    end
  end

  def self.delete(params)
    if task = Task.find(params[:id])
      task.destroy
      "'#{task.description}' has been removed!"
    else
      "I can't find that task."
    end 

  end

  def self.complete(params)
    if task = Task.find(params[:id])
      task.complete
      task.save
    end
  end

  def self.list(name)
    @list = List.find_by_name(name)
    @list.tasks
  end
end
