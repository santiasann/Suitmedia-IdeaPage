import axios from 'axios';

async function fetchPosts() {
    const sort = document.getElementById('sort').value;
    const showPerPage = document.getElementById('show-per-page').value;
    const url = `/posts?sort=${sort}&per_page=${showPerPage}`;
    const append = ['small_image', 'medium_image'];

    try {
        const response = await axios.get('https://suitmedia-backend.suitdev.com/api/ideas', {
            params: {
                'page[number]': 1,
                'page[size]': perPage,
                'append[]': append,
                sort
            }
        });

        const data = response.data;
        const cardContainer = document.querySelector('.card-container');
        cardContainer.innerHTML = ''; // Kosongkan container sebelum menambahkan data baru

        data.data.forEach(post => {
            const card = document.createElement('div');
            card.classList.add('card');
            card.innerHTML = `
                <img src="${post.small_image}" alt="${post.title}">
                <h2>${post.title}</h2>
                <p>${post.content}</p>
            `;
            cardContainer.appendChild(card);
        });
    } catch (error) {
        console.error('Error:', error);
    }
}