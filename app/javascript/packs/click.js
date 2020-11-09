  function click(){
    const tasks = document.querySelectorAll(".message-content");
    console.log(tasks)
    tasks.forEach (function (task) {
      task.addEventListener("click",function(){
        const task_element = document.getElementById("task-content")
        if (task_element.className == "message-content"){
          task_element.classList.replace("message-content", "changed-message-content")
        }
        else {
          task_element.classList.replace("changed-message-content", "message-content")
        }
      })
    })
  }
      setTimeout(click, 1000)

// function click(){
// const tasks = document.querySelectorAll(".message-content");
// console.log(tasks)
// tasks.forEach (function (task) {
//   task.addEventListener("click",function(){
//     const task_color = task.style.backgroundColor
//     if (task_color!="gray"){
//       task.setAttribute("style", "background-color:gray")}
//     else 
//       {task.removeAttribute("style")}
//     }) 
//     }
//     )}
//   setTimeout(click, 1000)