//1.When user clicks to login into their profile: 
////a.The page should show a form where the user can input books they have read by book title and author 
////b.The page should display the list of books the user has read
////c.The user should have the ability to update the books title. 


//2.When the User clicks on SignUp to create a profile:
////a.The page should have a sign up form to create username and password
////b.Once the User signs in the user should be sent to their profile


///----Variables live here---///
const loginBtn = document.getElementsByClassName('loginBtn')
const signupBtn = document.getElementsByClassName('signupBtn')
console.log(signupBtn);

console.log(loginBtn);



///----Make Func to display Login form when user presses the login btn 
const displayLoginForm = (event) => {
    // console.log('func was called');
    document.body.innerHTML = `<h1>Login</h1> <form class ='loginInfo'> Username: <input type='text' name='username'</input> <br>
        Password: <input type='text'  name='password'></input> <input type='submit' value='login'></input>
    </form>`

}


const displaySubmitForm = (event) => {
    document.body.innerHTML = `<h1>Create Profile</h1> <form class ='submitInfo'> Username: <input type='text' name='username'</input> <br>
    Password: <input type='text' name='password'></input> <input type='submit' value='submit'></input>
</form>`
    const submitForm = document.getElementsByClassName('submitInfo')
    console.log('func was funced');
    console.log(submitForm);

}



///---Create POST Request to create a User---///
const createUser = (event, user) => {
    fetch('http://localhost:3000/users', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: JSON.stringify({
                'username': event.target.username.value,
                'password': event.target.password.value
            })
        })
        .then(resp => resp.json())
        .then(getUser)
}




///---Make a GET Request to from the User's/id once user logs in to their profile--/// 
// const getUser = () => {
//     fetch(`http://localhost:3000/users/`)
// }



///---AddEventListener to User login button to get specific user id--///
document.body.addEventListener('submit', function(event) {
    debugger
    if (event.target.className === 'loginInfo') {
        console.log(event);
        let id = event.target.dataset.id
        console.log(id);


    }
})






///---AddEventListener to form to create User--/// 
document.body.addEventListener('submit', function(event) {
    event.preventDefault()
    console.log('it worked');
    if (event.target.className === 'submitInfo') {
        createUser(event)
    }
})




///---Event Delegation AddEventListener to LoginBtn---////

document.addEventListener('click', function(event) {
    if (event.target.className === 'loginBtn') {
        displayLoginForm(event)
    }
})


document.addEventListener('click', function(event) {
    if (event.target.className === 'signupBtn') {
        console.log(event);
        displaySubmitForm(event)

    }
})