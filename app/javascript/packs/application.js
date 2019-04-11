import "bootstrap";



const batch = 236; // change to your own batch id
const baseUrl = "https://wagon-chat.herokuapp.com/236/messages";

// Your turn to code!

// insert
const comment = document.querySelector('ul');
const btn = document.querySelector(".btn");
const refresh = document.querySelector("#refresh");
const form = document.getElementById("comment-form");
const message = document.querySelector('#your-message');
const name = document.querySelector('#your-name');


const getComment = () => {
  fetch(baseUrl)
    .then(response => response.json())
    .then((data) => {
      data.messages.forEach((d) => {
        const timeLength = Math.round((new Date() - new Date(d.created_at)) / 60000);
        comment.insertAdjacentHTML('afterbegin', `<li>${d.content} (posted <span class="date">${timeLength} minutes ago</span>) by ${d.author} </li>`);
      });
    });
};

// push
const postComment = (e) => {
  e.preventDefault();
  fetch(baseUrl, {
    method: 'POST',
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ author: name.value, content: message.value })
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      console.log('1');
    });
};

form.addEventListener('submit', postComment);
refresh.addEventListener("click", getComment);


// auto refresh
setInterval(getComment, 1000);
