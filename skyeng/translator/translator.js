;
(function (document, window) {
    class Translator {
        constructor() {
            this.SERVER_URL = "http://dictionary.skyeng.ru/api/v2/search-word-translation";
            this.selectedItem = null;
            this.translateContainer = document.createElement("div");
            this.translateContainer.classList.add("translator");
            this.translateContainer.addEventListener("mousedown", (event) => event.preventDefault());

            this.imageBlock = document.createElement("img");
            this.imageBlock.classList.add("translator__image");

            this.meaningsList = document.createElement("ul");
            this.meaningsList.classList.add("translator__meaning-list");
            this.meaningsList.addEventListener("mouseover", this.onHoverMeaning.bind(this));

            this.translateContainer.appendChild(this.imageBlock);
            this.translateContainer.appendChild(this.meaningsList);
            document.body.appendChild(this.translateContainer);
        }

        init(word, x, y) {
            this.translateContainer.style.left = x;
            this.translateContainer.style.top = y;
            this.getTranslate(word)
                .then((data) => {
                    this.render(data);
                    this.translateContainer.style.display = "block";
                });
        }

        render(data) {
            this.addMeaningsMarkup(data.meanings);
        }

        clear() {
            this.translateContainer.style.display = "none";
            this.imageBlock.src = "";
            this.meaningsList.innerHTML = "";
            this.selectedItem = null;
        }

        addMeaningsMarkup(meanings) {
            let firstItem = true;
            for (let meaning of meanings) {
                let meaningElement = document.createElement("li");
                meaningElement.classList.add("translator__meaning");
                if (firstItem) {
                    meaningElement.classList.add("translator__meaning--selected");
                    this.imageBlock.src = `https:${meaning.image_url}`;
                    this.selectedItem = meaningElement;
                }
                meaningElement.appendChild(document.createTextNode(meaning.translation));
                meaningElement.setAttribute("data-image", `https:${meaning.image_url}`);
                this.meaningsList.appendChild(meaningElement);
                firstItem = false;
            }
        }

        onHoverMeaning(event) {
            if (event.target.tagName !== "LI" || this.selectedItem === event.target) return;
            let item = event.target;
            this.selectedItem.classList.remove("translator__meaning--selected");
            item.classList.add("translator__meaning--selected");
            this.selectedItem = item;
            this.imageBlock.src = item.dataset.image;
        }

        getTranslate(word) {
            return fetch(`${this.SERVER_URL}?text=${word}`)
                .then((response) => response.json())
                .then((data) => {
                    if (data.length > 0) {
                        return data[0];
                    }
                    throw "No avialible translates";
                });
        }

    }

    const translator = new Translator();
    document.body.addEventListener("mouseup", (event) => {
        let selectedText = window.getSelection().toString();
        if (!selectedText) {
            return;
        }
        let trimText = selectedText.replace(/[^\w\s]/gi, '').trim();
        if (!trimText) {
            return;
        }
        let arrayOfWords = trimText.split(" ");
        if (arrayOfWords.length <= 0) {
            return;
        }
        translator.init(arrayOfWords[0], event.clientX, event.clientY);
});

document.body.addEventListener("mousedown", () => {
    translator.clear();
});

})(document, window);