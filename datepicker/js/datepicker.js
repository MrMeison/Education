;
(function (document, window) {
    let datepickers = document.querySelectorAll(".js-datepicker");
    for (var index = 0; index < datepickers.length; index++) {
        var picker = datepickers[index];
        picker.addEventListener("focus", onFocus);
    }

    function onFocus(event) {
        let datePicker = new DatePicker(event.target);
        event.target.removeEventListener("focus", onFocus);
    }

    class DatePicker {

        constructor(input) {
            // init properties
            this.monthNames = ["January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December"
            ];
            this.input = input;
            this.input.readOnly = true;
            this.selectedDate = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
            this.currentViewMonth = new Date(new Date().getFullYear(), new Date().getMonth(), 1);
            this.picker = null;
            this.header = null;
            this.calendar = null;
            this.leftArrow = null;
            this.rightArrow = null;


            this.initMarkup();
            this.bindEvents();
            this.showPicker();
        }

        initMarkup() {
            this.picker = document.createElement("table");
            this.picker.classList.add("datepicker");
            let markup = `
                <tr class="datepicker__header">
                    <th colspan="1"><button class="datepicker__arrow js-datepicker__arrow--left">&larr;</button></th>
                    <th colspan="5" class="datepicker__title"></th>
                    <th colspan="1"><button class="datepicker__arrow js-datepicker__arrow--right">&rarr;</button></th>
                </tr>
                <tr class="datepicker__days">
                    <th>пн</th>
                    <th>вт</th>
                    <th>ср</th>
                    <th>чт</th>
                    <th>пт</th>
                    <th>сб</th>
                    <th>вс</th>
                </tr>
                <tbody class="datepicker__calendar">
                </tbody>
            `;
            this.picker.innerHTML = markup;
            this.calendar = this.picker.getElementsByClassName("datepicker__calendar")[0];
            this.header = this.picker.getElementsByClassName("datepicker__title")[0];
            this.rightArrow = this.picker.getElementsByClassName("js-datepicker__arrow--right")[0];
            this.leftArrow = this.picker.getElementsByClassName("js-datepicker__arrow--left")[0];
            this.input.parentNode.insertBefore(this.picker, this.input.nextSibling);
            this.renderCalendar(this.calendar, this.currentViewMonth.getFullYear(), this.currentViewMonth.getMonth());
        }

        bindEvents() {
            this.leftArrow.addEventListener("mousedown", (event) => {
                this.changeMonth(-1);
                event.preventDefault();
            }, true);
            this.rightArrow.addEventListener("mousedown", (event) => {
                this.changeMonth(1);
                event.preventDefault();
            }, true);
            this.input.addEventListener("focus", this.showPicker.bind(this));
        }

        changeMonth(monthIncrement) {
            this.currentViewMonth.setMonth(this.currentViewMonth.getMonth() + monthIncrement);
            this.renderCalendar(this.calendar, this.currentViewMonth.getFullYear(), this.currentViewMonth.getMonth());
        }

        showPicker() {
            this.picker.classList.add("datepicker--show");
            this.input.addEventListener("blur", this.onInputBlur.bind(this));
        }

        onInputBlur() {
            this.hidePicker();
            this.currentViewMonth = new Date(this.selectedDate.getFullYear(), this.selectedDate.getMonth(), 1);
            this.renderCalendar(this.calendar, this.currentViewMonth.getFullYear(), this.currentViewMonth.getMonth());
        }
        hidePicker() {
            this.picker.classList.remove("datepicker--show");
        }

        renderCalendar(element, year, month) {
            let d = new Date(year, month);
            let calendar = "";
            this.header.innerHTML = `${this.monthNames[this.currentViewMonth.getMonth()]} ${this.currentViewMonth.getFullYear()}`;

            for (var i = 0; i < this.getDay(d); i++) {
                calendar += '<td></td>';
            }

            while (d.getMonth() == month) {
                let markedDate = this.selectedDate.getTime() === d.getTime();
                calendar += `
                <td>
                    <button class="datepicker__date ${markedDate ? 'datepicker__date--selected' : ''}" data-date="${d.toDateString()}">
                        ${d.getDate()}
                    </button>
                </td>
                `;

                if (this.getDay(d) % 7 == 6) {
                    calendar += '</tr><tr>';
                }

                d.setDate(d.getDate() + 1);
            }

            if (this.getDay(d) != 0) {
                for (var i = this.getDay(d); i < 7; i++) {
                    calendar += '<td></td>';
                }
            }

            element.innerHTML = calendar;
            element.addEventListener("mousedown", this.onSelectDate.bind(this), true);
        }

        getDay(date) {
            var day = date.getDay();
            if (day == 0) day = 7;
            return day - 1;
        }

        onSelectDate(event) {
            let button = event.target;
            if (button.tagName === "BUTTON") {
                let date = new Date(button.dataset.date);
                this.input.value = date.toDateString();
                this.selectedDate = date;
                let currentSelectedDates = this.calendar.getElementsByClassName("datepicker__date--selected");
                if (currentSelectedDates.length > 0) {
                    let selDate = currentSelectedDates[0];
                    selDate.classList.remove("datepicker__date--selected");
                }
                button.classList.add("datepicker__date--selected");
            }
            else {
                event.preventDefault();
            }
        }
    }
})(document, window);