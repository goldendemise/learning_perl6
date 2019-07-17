#!/usr/bin/env perl6
#array of Task objects for display
my @task-list;

#TODO:  add CRUD options for task items, use :k adverb to get array index
sub get-input {
my $user-input = prompt "Enter a to-do with formatted '\$todo & \$priority'>";
}
class Todo {
  has $.name;
  has $.priority;
}
#primary task list display function
#TODO: Write task list to file
sub list-tasks {
  for @task-list -> $task {
    say $task.name ~ " | " ~ $task.priority;
  }
say "Would you like to add,remove, or update a task?";
my $response = prompt;
=begin
my ($task, $priority) = get-input.split(" & ");
$priority = "0" if !$priority;
@task-list.push(add-task $task,$priority);
=end
list-tasks;

}
#call add-task and pass user input as arguments to add additional task items
sub add-task(Str $task-name, $priority) {
  my $new-task = Todo.new(name => $task-name, priority => $priority);
}


list-tasks;
