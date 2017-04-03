;
(function (document, window) {
    document.body.addEventListener("mouseup", () => {
        let selectedText = window.getSelection();
        let trimText = selectedText.replace(/[^\w\s]/gi, '');
        let arrayOfWords = trimText.split(" ");
        if (arrayOfWords.length > 0) {

        }
    });
    document.body.addEventListener("click", () => {});

    class Translateor {
        constructor() {
            this.SERVER_URL = "http://dictionary.skyeng.ru/api/v2/search-word-translation";
            this.translator
            this.imageBlock = null;
        }

        render(data) {

        }

        addMeaningsMarkup(meanings) {
            let meaningsMarkup = "";
            for (let meaning of meanings) {
                meaningsMarkup += `
                <span class="translater__meaning" data-image="${meaning.image_url}">
                    ${meaning.name}
                </span>
            `;
            }
            let container = document.createElement("div");
            container.classList.add("translater__meaning-list");
            container.innerHTML = meaningsMarkup;
            container.addEventListener("mouseover", this.onHoverMeaning.apply(this));
            return container;
        }

        onHoverMeaning(event) {
            event.target;
        }

        getTranslate(word) {
            return fetch(`${this.SERVER_URL}?text=${word}`);
        }

    }

})(document, window);