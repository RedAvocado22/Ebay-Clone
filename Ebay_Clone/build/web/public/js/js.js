// Slide show code
const listImage = document.querySelector('.list-images');
const imgs = document.getElementsByClassName('img-banners');
const btnLeft = document.querySelector('.btn-left');
const btnRight = document.querySelector('.btn-right');
const length = imgs.length;
let current = 0;

const handleChangeSlide = () => {
    if (current === length - 1) {
        current = 0;
        listImage.style.transform = `translateX(0px)`;
    } else {
        current++;
        let width = imgs[0].offsetWidth;
        listImage.style.transform = `translateX(${width * -1 * current}px)`;
    }
    
    const activeElement = document.querySelector('.active');
    if (activeElement) {
        activeElement.classList.remove('active');
    }
    
    const newActiveElement = document.querySelector(`.img-banners:nth-child(${current + 1})`);
    if (newActiveElement) {
        newActiveElement.classList.add('active');
    } else {
        console.error('New active element not found');
    }
};

let handleEventChangeSlide = setInterval(handleChangeSlide, 4000);

btnRight.addEventListener('click', () => {
    clearInterval(handleEventChangeSlide);
    handleChangeSlide();
    handleEventChangeSlide = setInterval(handleChangeSlide, 4000);
});

btnLeft.addEventListener('click', () => {
    clearInterval(handleEventChangeSlide);
    if (current === 0) {
        current = length - 1;
        let width = imgs[0].offsetWidth;
        listImage.style.transform = `translateX(${width * -1 * current}px)`;
    } else {
        current--;
        let width = imgs[0].offsetWidth;
        listImage.style.transform = `translateX(${width * -1 * current}px)`;
    }
    
    const activeElement = document.querySelector('.active');
    if (activeElement) {
        activeElement.classList.remove('active');
    }
    
    const newActiveElement = document.querySelector(`.img-banners:nth-child(${current + 1})`);
    if (newActiveElement) {
        newActiveElement.classList.add('active');
    } else {
        console.error('New active element not found');
    }
    handleEventChangeSlide = setInterval(handleChangeSlide, 4000);
});

// Scrolling code
function scrollb(list, direction) {
    let scrollAmount = 0;
    let distance = window.screen.width <= 1300 ? window.screen.width : 1300;
    let step = distance / 50;
    let time = 5;
    let e = document.getElementById(list);
    if (e) {
        let slideTimer = setInterval(() => {
            if (direction === "right") {
                e.scrollLeft += step;
            } else {
                e.scrollLeft -= step;
            }
            scrollAmount += step;
            if (scrollAmount >= distance) {
                clearInterval(slideTimer);
            }
        }, time);
    } else {
        console.error(`Element with id ${list} not found`);
    }
}

document.querySelector(".arrow-left").addEventListener("click", () => scrollb("geschenkideen", "left"));
document.querySelector(".arrow-right").addEventListener("click", () => scrollb("geschenkideen", "right"));
