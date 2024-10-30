function showSection(section) {
    var aboutSection = document.getElementById('shop-section');
    var feedbackSection = document.getElementById('feedback-section');
    var orderSection = document.getElementById('order-section');
    var aboutTab = document.getElementById('about-tab');
    var feedbackTab = document.getElementById('feedback-tab');
    var orderTab = document.getElementById('order-tab');

    if (section === 'about') {
        aboutSection.style.display = 'block';
        feedbackSection.style.display = 'none';
        orderSection.style.display = 'none';
        aboutTab.classList.add('active');
        feedbackTab.classList.remove('active');
        orderTab.classList.remove('active');

    } else if (section === 'feedback') {
        aboutSection.style.display = 'none';
        feedbackSection.style.display = 'block';
        orderSection.style.display = 'none';
        feedbackTab.classList.add('active');
        aboutTab.classList.remove('active');
        orderTab.classList.remove('active');
    } else if (section === 'order') {
        aboutSection.style.display = 'none';
        feedbackSection.style.display = 'none';
        orderSection.style.display = 'block';
        orderTab.classList.add('active');
        feedbackTab.classList.remove('active');
        aboutTab.classList.remove('active');
    }
}

// Hàm hiển thị Sold Orders toàn màn hình
function showSoldOrders() {
    // Ẩn Bought Orders và hiển thị Sold Orders
    document.getElementById('bought-orders').classList.remove('active');
    document.getElementById('sold-orders').classList.add('active');
    document.getElementById('order-buy').classList.remove('kira');
    document.getElementById('order-sell').classList.add('kira');
    // Đặt chế độ fullscreen cho container
    document.querySelector('.order-container').classList.add('fullscreen');
}

// Hàm hiển thị Bought Orders toàn màn hình
function showBoughtOrders() {
    // Ẩn Sold Orders và hiển thị Bought Orders
    document.getElementById('sold-orders').classList.remove('active');
    document.getElementById('bought-orders').classList.add('active');
    document.getElementById('order-sell').classList.remove('kira');
    document.getElementById('order-buy').classList.add('kira');

    // Đặt chế độ fullscreen cho container
    document.querySelector('.order-container').classList.add('fullscreen');
}

function showFeedback(type) {
    // Ẩn tất cả các phần feedback
    document.querySelectorAll('.feedback-item').forEach(item => {
        item.classList.add('hidden');
        item.classList.remove('active');
    });

    // Gỡ bỏ gạch chân cho tất cả các nút
    document.querySelectorAll('.feedback-buttons button').forEach(button => {
        button.classList.remove('open');
    });

    // Hiển thị phần feedback được chọn và gạch chân nút tương ứng
    if (type === 'positive') {
        document.getElementById('positive-feedback').classList.remove('hidden');
        document.getElementById('positive-feedback').classList.add('active');
        document.querySelector('button[onclick="showFeedback(\'positive\')"]').classList.add('open');
    } else if (type === 'neutral') {
        document.getElementById('neutral-feedback').classList.remove('hidden');
        document.getElementById('neutral-feedback').classList.add('active');
        document.querySelector('button[onclick="showFeedback(\'neutral\')"]').classList.add('open');
    } else if (type === 'negative') {
        document.getElementById('negative-feedback').classList.remove('hidden');
        document.getElementById('negative-feedback').classList.add('active');
        document.querySelector('button[onclick="showFeedback(\'negative\')"]').classList.add('open');
    }
}


