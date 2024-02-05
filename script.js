a
const game = [
    { title: 'Halo', rating: 5 },
    { title: 'God of war 3', rating: 4 },
    { title: 'Minecraft', rating: 5 },
];


function Games() {
    const gameContainer = document.getElementById('game-container');
    gameContainer.innerHTML = '';

    game.forEach(game => {
        const gameDiv = document.createElement('div');
        gameDiv.classList.add('game');
        gameDiv.innerHTML = <strong>${game.title}</strong> - Rating; {game.rating};
        gameContainer.appendChild(gameDiv);
    });
}


function addgame() {
    const gameTitleInput = document.getElementById('game-title');
    const gameRatingInput = document.getElementById('game-rating');

    const title = gameTitleInput.value.trim();
    const rating = parseInt(gameRatingInput.value);

    if (title && !isNaN(rating) && rating >= 1 && rating <= 5) {
        game.push({ title, rating });
        Games();

        // Clear input fields
        gameTitleInput.value = '';
        gameRatingInput.value = '';
    } else {
        alert('Please enter a valid title and rating (1-5).');
    }
}

Games();