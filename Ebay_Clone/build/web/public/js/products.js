document.addEventListener("DOMContentLoaded", () => {
    const productList = document.querySelector(".product-list");
    const allCategoriesCheckbox = document.querySelector("#all-categories");
    const categoryCheckboxes = document.querySelectorAll(".category-filter input[type='checkbox']:not(#all-categories)");
    const priceRadios = document.querySelectorAll(".price-filter input[type='radio']");
    const sortDropdown = document.querySelector(".sort-dropdown");

    const itemsPerPage = 9;
    let currentPage = 1;
    let initialProducts = Array.from(productList.children);
    let filteredProducts = initialProducts;

    const paginationControls = document.getElementById("pagination-controls");

    function displayPage(page) {
        const start = (page - 1) * itemsPerPage;
        const end = start + itemsPerPage;

        productList.innerHTML = '';
        filteredProducts.slice(start, end).forEach(product => productList.appendChild(product));

        currentPage = page;
        renderPageNumbers();
    }

    function renderPageNumbers() {
        const totalPages = Math.ceil(filteredProducts.length / itemsPerPage);
        paginationControls.innerHTML = '';

        for (let i = 1; i <= totalPages; i++) {
            const pageButton = document.createElement("button");
            pageButton.textContent = i;
            pageButton.classList.add("page-number");
            if (i === currentPage)
                pageButton.classList.add("active");

            pageButton.addEventListener("click", () => displayPage(i));
            paginationControls.appendChild(pageButton);
        }
    }

    function filterProducts() {
        const selectedCategories = Array.from(categoryCheckboxes)
                .filter(checkbox => checkbox.checked)
                .map(checkbox => parseInt(checkbox.value));

        const selectedPrice = Array.from(priceRadios)
                .find(radio => radio.checked)?.id || "";

        filteredProducts = initialProducts.filter(product => {
            const productCategoryID = parseInt(product.dataset.categoryId);
            const categoryMatch = selectedCategories.length === 0 || selectedCategories.includes(productCategoryID) || allCategoriesCheckbox.checked;

            const price = parseFloat(product.querySelector(".product-price").textContent.replace("$", "").replace(",", ""));
            const priceMatch = selectedPrice === "" || (
                    (selectedPrice === "under-price" && price < 30) ||
                    (selectedPrice === "range-price" && price >= 30 && price <= 75) ||
                    (selectedPrice === "over-price" && price > 75)
                    );

            return categoryMatch && priceMatch;
        });

        displayPage(1);
    }

    // Sorting logic
    function sortProducts() {
        const sortValue = sortDropdown.value;

        if (sortValue === "Best match") {
            filteredProducts = initialProducts;
        } else {
            filteredProducts = [...filteredProducts].sort((a, b) => {
                const priceA = parseFloat(a.querySelector(".product-price").textContent.replace("$", "").replace(",", ""));
                const priceB = parseFloat(b.querySelector(".product-price").textContent.replace("$", "").replace(",", ""));
                return sortValue === "Lowest Price" ? priceA - priceB : priceB - priceA;
            });
        }
        displayPage(1);
    }

    allCategoriesCheckbox.addEventListener("change", () => {
        if (allCategoriesCheckbox.checked) {
            categoryCheckboxes.forEach(checkbox => checkbox.checked = false);
        }
        filterProducts();
    });

    categoryCheckboxes.forEach(checkbox => checkbox.addEventListener("change", () => {
            if (checkbox.checked) {
                allCategoriesCheckbox.checked = false;
            }
            filterProducts();
        }));

    priceRadios.forEach(radio => radio.addEventListener("change", filterProducts));
    sortDropdown.addEventListener("change", sortProducts);

    filterProducts();
});
