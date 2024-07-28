const completeTask = (formElement) => {
  const taskId = formElement.dataset.taskId;
  
  fetch(formElement.action, {
    method: "PATCH", 
    headers: {'Accept': 'application/json'},
    body: new FormData(formElement)
  })
  .then(response => {
    if (!response.ok) {
      alert("Could not complete task");
    } else {
      const taskElement = document.getElementById(`task__${taskId}`)
      taskElement.remove();
    }
  })
}