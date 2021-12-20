// Toast
const elemnsToast = document.querySelector("#toast");
const instanceToast = () => {
    M.toast( {
        html: "Também sou uma notificação",
        classes: "rounded"
    })
}

elemnsToast.addEventListener("click", () => {
    instanceToast();
});