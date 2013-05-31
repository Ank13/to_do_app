class ListsController

  def self.add(params)
    if list = List.find_by_name(params[:name])
      "'#{list.name}' already exists."
    else 
      list = List.create(name: params[:name])
      "You've just created the '#{list.name}' list."
    end
  end

  def self.delete(params)
    if list = List.find(params[:id])
      list.destroy
      "'#{list.name}' has been removed!"
    else
      "I can't find that list."
    end 

  end

  def self.list
    List.all
  end
end
