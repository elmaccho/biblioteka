const showpass = document.querySelector(".showpass")
const hidepass = document.querySelector(".hidepass")
const passInput = document.querySelector('.passInput')

const showPassword = () => {
    passInput.type = "text"
    showpass.style.display = "none"
    hidepass.style.display = "unset"
}

const hidePassword = () => {
    passInput.type = "password"
    showpass.style.display = "unset"
    hidepass.style.display = "none"
}

showpass.addEventListener("click", showPassword)
hidepass.addEventListener("click", hidePassword)